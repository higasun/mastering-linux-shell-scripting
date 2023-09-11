### 2>&1
```fd1>&fd2```で
ファイルディスクリプタfd1の出力先をfd2の出力先に移す。

たとえば、以下の場合
```shell
program > log.txt 2>&1
```
stdout(fd=1)をlog.txtにリダイレクトしたあと、stderr(fd=2)をstdoutと同じところへ出力させる、という意味。

Cで書くとこんな感じ
```c
int fd = open("log.txt", O_WRONLY);
dup2(fd, 1); // stdoutのリダイレクト
dup2(1, 2);  // stderrをstdoutと同じfdに移す
```
参考:[プログラムの出力をリダイレクトする](https://blog.ingage.jp/entry/2018/06/19/104313)

### exit 2
```exit 2```は、引数がない場合や権限がない場合など。

参考:[コマンドラインツールを書くなら知っておきたい Bash の 予約済み Exit Code](https://qiita.com/Linda_pp/items/1104d2d9a263b60e104b)


### 練習問題
#### 3-1
False
#### 3-2
どちらも正しい
#### 3-3
3
#### 3-4
True