### 二重の角括弧
本の説明がわかりにくかったので下記を参照した。
[Bashの括弧のノウハウ（まとめ）
](https://qiita.com/Ping/items/f9b5175085026462b082#double-bracket--)

### 練習問題
#### 5-1
```shell
(( a = 25 - 8 ))
```
#### 5-2
```shell
rm "my file"
```
#### 5-3
2通りの解決策
- 二重の丸括弧で全体を囲む```(( a = 8 + 4 ))```
- $で評価したものを代入する```a=$(( 8 + 4 ))```
