### 練習問題
#### 9-1
```shell
#自分の解答
sed = httpd.conf | grep -A1 '^50' | tail -n1

#解答
sed -n '50 p' httpd.conf 
```

#### 9-2
```shell
# 自分の解答
sed -i '/^Listen [0-9]*/ s//Listen 80/' httpd.conf

# 解答

```
