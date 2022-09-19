use pcre2_rs_ffi::match_all;
use std::net::UdpSocket;

fn main() {
    let pattern = r"(\d{4})([^\d\s]{3,11})((.|\n)+)";
    let target = "a;jhgoqoghqoj0329 u0tyu10hg0h9Y0Y9827342482y(Y0y(G)_)lajf;lqjfgqhgpqjopjqa=)*(^!@#$%^&*())9999999";

    let res = match_all(pattern, target);
    println!("------match_all end");

    // send result by socket udp
    let socketid = UdpSocket::bind("127.0.0.1:37779").expect("couldn't bind to address");
    for s in res.iter() {
        println!("send {}", s);
        socketid
            .send_to(s.as_bytes(), "127.0.0.1:37778")
            .expect("couldn't send data");
    }
}
