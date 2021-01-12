# 繰り返しの旅にインクリメント(1を増やす)される値と一緒に繰り返す
%w(Alice Bob Charlie).each_with_index do |name, index|
  puts "#{index}: #{name}"
end


# 末尾から逆順に繰り返す
(1..3).reverse_each do |val|
  puts val
end


# 要素をn個(今回は2個)ずつで区切って繰り返す
(1..5).each_slice 2 do |a, b|
  p [a, b]
end


# n個の連続した要素を1つずつずらしながら繰り返す
(1..4).each_cons 2 do |a, b|
  p [a, b]
end


# succメソッドを持たないオブジェクトを使った範囲オブジェクトに対して繰り返し処理を行うことはできない。


# cycleはレシーバーの要素を先頭から末尾まで繰り返し、それを永遠に繰り返す。
# (1..3).cycle do |n|
  # 無限ループになる
  # puts n
# end


# mapは与えられたブロックを評価した結果の配列を返す。配列の要素の文字列を全て大文字に変換する処理は以下の様に記述できる「
p ['ruby', 'rails'].map {|str| str.upcase }



# all?は全ての要素が真ならばtrueを返す
p [true, true, true].all?
p [false, true, true].all?

# none?は全ての要素が偽ならばtrueを返す
p [false, false, false].none?

# any?は1つでも真の要素があればtrueを返す
p [true, true, false].any?
p [false, false, false].any?

# one?は1つだけ真であればtrueを返す
p [true, false, false].one?


# 要素が全て整数ならtrueを返す
p [4,4,2,3].all? {|v| v.is_a?(Integer)}
p [4,4,'two'].all? {|v| v.is_a?(Integer)}


# grepは引数と要素を===で比較して信徒なる要素の配列を返す。
# 正規表現で比較する場合
p %w(Alice, Bob, Charlie).grep(/a/i)
# クラスで指定する場合
p ['a', 'b', 3, 4].grep(String)


# オブジェクトのなかで?が含まれているメソッドを検索している
object = Object.new
p object.methods.grep((/\?/))


# detectはブロックを各要素に対して実行して戻り値が最初にしんとなった要素を返す
array = [4,4,2,3]
p array.detect {|v| v.even? }


# selecはブロックを各要素に対して実行し、ブロックの戻り値が真となった要素全てを返す。rejectはその逆の動作をする。
p array.select {|v| v.even? }
p array.reject {|v| v.even? }


# takeは先頭から任意の数の要素を配列として返す。dropは先頭から任意の要素をスキップして残りの要素の配列を返す。
array = [1,2,3,4,5]
p array.take(3)
p array.drop(3)


# take_whileはブロックが最初に偽を返すまでの要素の配列を返す。drop_whileはブロックが最初に偽を返してからの要素の配列を返す
p array.take_while {|n| n < 3 }
p array.drop_while {|n| n < 3 }


# 配列に対してsumを用いると各要素またはブロックの戻り値を+で足し合わせた値を返す
puts [4,4,2,3].sum


# each_with_objectは要素を繰り返しながら1つのオブジェクトを更新していく処理に適している。
# 以下は配列から各要素の長さを要素とするハッシュを作成する記述
p %w(Alice Bob Charlie).each_with_object({}) {|name, result|
  result[name] = name.length
}