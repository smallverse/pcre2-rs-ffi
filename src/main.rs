use pcre2_rs_ffi::match_all;

fn main() {
    let pattern = r"(\d{4})([^\d\s]{3,11})((.|\n)+)";
    let target = "a;jhgoqoghqoj0329 u0tyu10hg0h9Y0Y9827342482y(Y0y(G)_)lajf;lqjfgqhgpqjopjqa=)*(^!@#$%^&*())9999999";
   
    match_all(pattern, target);
    println!("------end");
}
