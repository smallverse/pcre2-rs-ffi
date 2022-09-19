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

# 2 test
```
cd pcre2-master
mkdir build
cd build && cmake ../ && make

```
