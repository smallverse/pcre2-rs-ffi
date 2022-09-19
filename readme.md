**Build By Ubuntu(WSL2)**
> Theoretically macos is also feasible


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
![image](https://user-images.githubusercontent.com/11326721/191046195-a155945c-9fc5-4fe2-9820-fcdc9fea5071.png)


## 2.2 run main
```
cargo run --package pcre2-rs-ffi --bin pcre2-rs-ffi 

```
![image](https://user-images.githubusercontent.com/11326721/191046332-b503208d-3aed-4a7a-a4f3-7621c88a0d48.png)

## 2.3 udp receive
![image](https://user-images.githubusercontent.com/11326721/191046609-dd1a78a8-cbfe-4e8c-90cc-dd76dda35886.png)



# 3 test
```
### cargo test
cargo test --package pcre2-rs-ffi --lib -- tests::test_match_all --exact --nocapture

```
![image](https://user-images.githubusercontent.com/11326721/191046025-e311fe2b-440a-4225-8e6b-2a43268d0716.png)



