array = [4,4,2,3]

# Array[]=を用いることで同じ位置にすでに要素ばある場合は上書きされ、配列のサイズ以上の位置を指定した場合は、途中の要素としてnilが挿入される。
array[0] = 5
p array

array[10] = 1
p array



# 配列の末尾に要素を1つ追加するにはpushまたは<<を使う。
array = [4,4,2]
array << 3
p array
array.push 3
p array

# popは配列の末尾から要素を1つ取り出す。
array.pop
p array


# shiftは先頭の要素の取り出し、unshiftは先頭に要素を追加するためのメソッド
array = [4,4,2,3]
array.shift
p array

array.unshift 4
p array


# select!はブロックを実行し、結果が真となった要素以外を取り除く。reject!は結果が真となった要素を取り除く
array = [1,2,3,4]
p array.select! {|v| v.even?}

array = [1,2,3,4]
p array.reject! {|v| v.even? }


array = [1,2,3,4]
# delete_ifやkeep_ifはレシーバーが更新されなかった場合も常にレシーバーを返す。select!やreject!は更新されなかった場合にはnilを返す
p array.delete_if {|v| false }
p array.reject! {|v| false }
p array.keep_if {|v| true }
p array.select! {|v| true }



# deleteは引数の値と等しい要素を自身から全て削除する。浮動小数点と整数との比較では暗黙的な型変換が行われる。
array = [4,4.0,2,3]
array.delete 4
p array


# delete_atは指定した添字の要素を削除する
array = [4,4,2,3]
array.delete_at 1
p array


# compactは配列の要素からnilを取り除いた新しい配列を返す。また、compact!は破壊的メソッドになる
array = [false, nil, 0, '', []]
p array.compact
p array
p array.compact!
p array


# uniqは重複した要素を取り除いた新しい配列を返す。暗黙の型変換は行われない。uniq!はuniqの破壊的メソッド
array = [4,4,4.0,2]
p array.uniq
p array

p array.uniq!
p array


# reverseは自身の順番を逆にした新しい配列を返す。reverse！は破壊的メソッド
array = [4,4,2,3]
p array.reverse
p array

p array.reverse!
p array


# flattenは多次元配列を平にした新しい配列を返す。flatten!は破壊的メソッド
array = [4,[4,[2,3]]]
p array.flatten
p array
p array.flatten!
p array


# sort!やsort_by!は破壊的メソッドで自身を更新させることができる
array = [4,4,2,3]
p array.sort
p array
p array.sort!
p array
array = ["fooo", "fooo", "fo", "foo"]
array.sort_by! {|v| v.length }
p array


# map!はmapの結果の配列で自身を更新する。
people = %w(Alice Bob Charlie)
p people.map! {|person| person.upcase }



# transposeは配列を行列と見立てて行と列の入れかを行い、新しい配列を返す。レシーバーが二次元配列でない場合や配列のサイズが異なる場合には例外が発生する。
array = [['a','b','c'],[1,2,3]]
p array.transpose



# zipは自身と引数に渡された配列から配列の配列を生成する
array = [1, 'a']
p array.zip([2, 'b'], [3, 'c'])



array = [1,3,5,7,9]
puts array.bsearch {|n| n < 6 }
p array.bsearch {|n| n > 10 }



# hoinは配列を連結した文字列を返す。引数を指定した場合にはセパレータとなる文字列を指定することもできる
array = [24,1,365]
p array.join
p array.join('-')