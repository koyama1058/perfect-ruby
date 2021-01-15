# mergeは2つのハッシュを1つにまとめた新しいハッシュを返す。キーが重複した場合には引数として渡されたハッシュの値で上書きされる
a = {one: 'A', twe: nil}
b = {twe: 'b', three: 'c'}

p a.merge(b)

# mergeはオプションの様なハッシュ形式の引数にデフォルト値を持たせたいときに便利
def keywords(**options)
  defaults = {alice: 'アリス', bob: 'ボブ'}
  p hash = defaults.merge(options)
end

keywords chalie: 'ボブ'


# merge!は破壊的メソッドである。
hash = {one: 'A'}
hash.merge! two: 'B'
p hash


# inverはキーと値を入れ替えた新しいハッシュを生成する。キーと値を入れ替えた結果、キーが重複してしまった場合はどちらかの値が消滅する。どちらが残るかは不定
# p {one: 1, two: 2}.invert
# p {foo: 1, bar: 1}.invert



# ハッシュに対して存在しないキーが添字参照したときの戻り値はnil。しかし、値がnilである場合と区別がつかない。has_key?では指定した値が存在するかを確認できる
hash = {foo: nil}

p hash[:unknown]
p hash[:foo]
p hash.has_key?(:unknown)
p hash.has_key?(:foo)
# 以下はhas_key?と同様の動作をするメソッド
p hash.key?(:foo)
p hash.member?(:foo)
p hash.include?(:foo)


# 指定した値を持つエントリが存在するかを確認したい場合にはhas_value?を用いる
hash = {foo: 'bar'}

p hash.has_value?('bar')
p hash.has_value?('baz')
# 以下はhas_value?と同じ動作をする
p hash.value?('bar')


# keysはレシーバーのキーを配列で返す
h = {one: 'A', two: 'B', three: 'C'}
p h.keys

# keyは特定の値を持つキーを返す。同じ値を持つキーが複数存在する場合にはどのキーが返されるかは不定
p h.key('B')


# valuesは値の配列を返す。values_atは任意のキーの値だけを得る
hash = {one: 'A', two: 'B', three: 'C'}
p hash.values
p hash.values_at(:three, :two)


# values_atと多重代入を組み合わせることで複数の値を一度に変数に代入できる
three, two = hash.values_at(:three, :two)
p two
p three


# ネストしたHashの様な複雑なデータ構造から値を取得するには[]を使う方法とdigを使う方法があり、digを使うことで値がない場合にはnilを返す様になった
hash = {
  alice: {books: {wonder: 1865}}, 
  charlie: {}
}

p hash[:alice][:books][:wonder]
p hash.dig(:alice, :books, :wonder)
# []を使うと値がない場合には例外を返してしまう
# p hash[:charlie][:books][:chocolate]
p hash.dig(:chalie, :books, :chocolate)


# digはHashと配列を辿らなければならない場合にも一回で値を取得できる
hash = {a: [{word: 'alice'}, {word: 'alpha'}]}

p hash.dig(:a, 0, :word)

