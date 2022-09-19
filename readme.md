**build by ubuntu(WSL2)**
> 理论下mac也可行

---

# 1 build pcre2-master 
```
cd pcre2-master
mkdir build
cd build && cmake ../ && make
cd -
cp -r ./build ./pcre2

```

# 2 run
## 2.1 run udp
```
./recv_udp.sh 
```
## 2.2 run main
```
cargo run --package pcre2-rs-ffi --bin pcre2-rs-ffi 

```

# 3 test
```
### cargo test
cargo test --package pcre2-rs-ffi --lib -- tests::test_match_all --exact --nocapture

```

