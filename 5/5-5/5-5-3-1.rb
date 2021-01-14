array = [1,2]

p array.hash
array.reverse!
p array.hash


hash = {one: 1, two: 2}

# ハッシュに対してeachメソッドを用いるとキーとバリューを繰り返して処理する
hash.each do |key, val|
  puts "#{key}: #{val}"
end

# each_keyではキーだけを繰り返す
hash.each_key do |key|
  puts key
end

# each_valueは値だけを繰り返す
hash.each_value do |key|
  puts key
end


# キーを指定して値を追加更新する場合には[:]=を使う
hash = {}
hash[:foo] = 'bar'
puts hash


# キーに対応するエントリを削除するにはdeleteを使う
hash.delete(:foo)
puts hash


# select!はハッシュから特定のエントリだけを残して自身を破壊的に更新する。またselectはレシーバーを更新しないメソッド
hash = {foo: 1,bar: 2,baz: 3}
# odd?は奇数であれば真を返す
hash.select! {|key, val| val.odd? }
puts hash


# reject!はハッシュから特定のエントリだけを取り除いて自身を破壊的に更新する。またrejectはレシーバーを更新しないメソッド
hash = {foo: 1,bar: 2,baz: 3}
hash.reject! {|key, val| val.odd? }
puts hash


# select!やreject!は対象となるエントリが1つもなかった場合にはnilを返す。keep_ifやdelete_ifは常にselfが返ってくる。
hash = {foo: 1,bar: 2,baz: 3}
p hash.keep_if {|key, val| true}
p hash.delete_if {|key, val| false}


# transform_valuesはハッシュの全ての値をブロックの実行結果で置き換えた新しいハッシュを返す。破壊的バージョンのtransform_values！もある。
names = {a: 'alice', b: 'bob', c: 'carol'}
p names.transform_values {|name| name.capitalize }


# compactは値がnilである要素を除外して新しいハッシュを返す。破壊的メソッドのcompact!もある.
hash = {foo: 1, bar: 2, baz: nil}
p hash.compact