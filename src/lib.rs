use core::ffi::c_void;
use std::collections::HashSet;

const PCRE2_UCP: u32 = 0x00020000;
const PCRE2_UTF: u32 = 0x00080000;
const PCRE2_NO_UTF_CHECK: u32 = 0x40000000;

#[link(name = "pcre2-8")]
extern "C" {
    fn pcre2_compile_8(
        pattern: *const u8,
        len: usize,
        options: u32,
        err_code: *mut i32,
        err_offset: *mut usize,
        context: *mut c_void,
    ) -> *mut core::ffi::c_void;

    fn pcre2_match_8(
        code: *const c_void,
        target: *const u8,
        len: usize,
        startoffset: usize,
        options: u32,
        match_data: *mut c_void,
        match_context: *mut c_void,
    ) -> i32;

    fn pcre2_match_data_create_from_pattern_8(
        code: *const c_void,
        context: *mut c_void,
    ) -> *mut c_void;

    fn pcre2_get_ovector_pointer_8(match_data: *mut c_void) -> *mut usize;
}

pub fn match_next(pattern: &str, target: &str, startoffset: &mut usize) -> (usize, usize) {
    let mut err_code: i32 = 0;
    let mut err_offset: usize = 0;

    let code = unsafe {
        pcre2_compile_8(
            pattern.as_ptr(),
            pattern.len(),
            PCRE2_UCP | PCRE2_UTF,
            &mut err_code,
            &mut err_offset,
            core::ptr::null_mut(),
        )
    };

    if code.is_null() {
        panic!("code is null");
    }

    let match_data = unsafe { pcre2_match_data_create_from_pattern_8(code, core::ptr::null_mut()) };
    if match_data.is_null() {
        panic!("could not allocate match_data");
    }

    let ovector = unsafe { pcre2_get_ovector_pointer_8(match_data) };
    if ovector.is_null() {
        panic!("could not get ovector");
    }

    let offset = startoffset.clone();
    let err = unsafe {
        pcre2_match_8(
            code,
            target.as_ptr(),
            target.len(),
            offset,
            PCRE2_NO_UTF_CHECK,
            match_data,
            core::ptr::null_mut(),
        )
    };

    if err == -1 {
        return (0, 0);
    } else if err < 0 {
        panic!("Unknown Error!");
    } else {
        let result = unsafe { (*ovector, *ovector.offset(1)) };
        *startoffset = result.1;

        result
    }
}

/// match_all
pub fn match_all(pattern: &str, target: &str) -> HashSet<String> {
    let mut startoffset = 0;
    let mut res = HashSet::new();
    while startoffset < target.len() {
        let (begin, end) = match_next(pattern, target, &mut startoffset);
        if begin == 0 && end == 0 {
            break;
        }

        if end < target.len() {
            startoffset = end;
        }

        // print_matched
        let re = print_matched(target, begin, &mut startoffset);
        res.insert(re);
    }
    res
}

#[allow(unused)]
fn print_matched(target: &str, begin: usize, end: &mut usize) -> String {
    let mut right_index = *end;
    for i in (begin + 4)..*end {
        if i - (begin + 4) < 3 {
            continue;
        }
        if i - (begin + 4) > 11 {
            right_index = i;
            break;
        }
    }
    *end = right_index;

    let re = &target[(begin + 4)..*end];
    println!("------print_matched:{}", re);

    re.to_string()
}

#[cfg(test)]
mod tests {
    use crate::match_all;

    #[test]
    fn test_match_all() {
        let pattern = r"(\d{4})([^\d\s]{3,11})((.|\n)+)";
        let target = "a;jhgoqoghqoj0329 u0tyu10hg0h9Y0Y9827342482y(Y0y(G)_)lajf;lqjfgqhgpqjopjqa=)*(^!@#$%^&*())9999999";

        let res = match_all(pattern, target);
        for s in res.iter() {
            println!("------re {}", s);
        }
    }
}
