# Array

# 配列は[]や%記法以外にArray.newでも作成できる。第一引数に配列の長さ、第二引数には要素となる値を指定する
p Array.new(5, 1)


# 全ての要素は第二引数に私たオブジェクトと同一になる。1つの要素に対して破壊的な操作をすると全ての要素に影響する
array = Array.new(3, 'naive')
array[0].reverse!
p array


# ブロックで受け取ることで添字の値に応じて要素を変化させることができる。
p Array.new(3) {|index| index.succ}


# 以下では引数を配列に変換した結果を返す。
p Array('Alice')
p Array(['Alice'])
p Array(nil)


array = [4,4,2,3]
# lengthでは配列の要素数を調べられる
p array.length
# empty?は配列が空かどうかを調べる
p array.empty?
p [].empty?
# Array#include?は引数に与えたオブジェクトと等しい要素がレシーバーの要素として存在するかを真偽値で返す。
p array.include?(4)


# 配列に対して演算子メソッドを用いることで2つの配列から新たな配列を得ることができる
# 配列同士を連結した配列を作成
p [1,2,3] + [4,5]
# 要素を取り除いた配列を作成
p [4,4,2,3] - [4,3]
# 共通の要素からなる配列を作成
p [1,2,3] & [2,3,4]
# n回繰り返した配列を作成
p [1,2,3] * 2


# 配列の要素は添字で取得することができる
p array[2]
# 開始位置と長さ、範囲を指定することができる
p array[2,2]
p array[2..4]


# values_atは複数の添字の要素を配列で返す。
p array.values_at(1)
# 添字が1、3の要素を取得して配列で返す
p array.values_at(1,3)


# 先頭や末尾の要素を得るためにはfirstやlastを使う。引数に整数を渡すとその数だけ要素を取得して返す。
p array.first
p array.first(2)
p array.last
p array.last(2)


# sampleは自身からランダムに要素を返す。引数に整数で個数を指定することもでき、個数分の要素を配列で返す。
p array.sample
p array.sample(2)


# assocは配列から特定のキーを持つ要素を返すメソッド。
ary = [[:foo, 4], [:bar, 2], [:baz, 3]]
p ary.assoc(:bar)