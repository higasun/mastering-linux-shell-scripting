### p.23 変数のスコープ
変数のスコープは**変数を作成したプロセス**に限られる。もし、他のプロセスでも使いたい場合は、```name=higasun ```と定義したあと、```export name```とすれば、他のプロセスからも読み取れる。ただ、読み取り限定なのでその変数を変更することはできない。

### 練習問題
#### 1-1
変数定義の=の前に空白が入っている。=の前後に空白を入れてはいけない。シェルは空白があると、コマンドだと認識してしまう。
#### 1-2
```Tuesday```
#### 1-3
2点
- 1-1と同じで変数定義の=の前後に空白を入れない。
- コマンドの結果を評価する場合は、back quoteまたは、```$()```で囲む必要がある
#### 1-4
bは"c", cは"a"という文字列になる。
