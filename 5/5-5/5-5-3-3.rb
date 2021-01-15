# ハッシュに対して存在しないキーで添字参照したときの戻り値はnil。Hash.newの第一引数にはデフォルト値を指定できる
has_default = Hash.new('undefined')
p has_default[:foo]

# デフォルト値として帰る値は全て同一オブジェクトのため、破壊的な操作が思わぬ影響を及ぼす場合がある
has_default = Hash.new('naive')
value = has_default['foo']

value.reverse!
p has_default['foo']


# デフォルト値はブロックで渡すこともできる。ブロックの引数には自身と参照されたキーが渡される。ブロックは添字参照の度に実行される
has_default = Hash.new {|hash, key| Time.now }

p has_default['foo']
sleep 1
p has_default['foo']


# 既にあるHashオブジェクトにデフォルト値を設定するためにはdefault=やdefault_procを使う
has_default = {}

p has_default[:foo]
# デフォルトの固定値を設定する
p has_default.default = 'bar'
p has_default['foo']
# デフォルト値を返す手続きオブジェクトを設定する
has_default.default_proc = ->(hash, key) { Time.now }
p has_default['foo']


# fetchはハッシュの値を参照するメソッド。添字参照とは異なり、値が存在しない場合の戻り値をブロックで指定できる
hash = {}
p hash.fetch('foo', 'default')
p hash.fetch('foo'){|key| key}
# ブロックを与えなかった場合、キーが存在しなければ例外が発生する
# p hash.fetch('foo')


# ハッシュを配列に変換するためにはto_aを用いる。キーと値にペアは2つの要素を持つ配列に変換される
a = {one: 1, two: 2}.to_a
p a
# 変換した配列に対してはassocでアクセスできる
p a.assoc(:one)


# 要素が偶数個の配列をハッシュにするには下記の様に記述する
ary = ['key1', 'one', 'key2', 'two']
p Hash[*ary]

# 配列の配列をハッシュにするには下記の様に記述する
ary = [['key1', 'one'], ['key2', 'two']]
p Hash[ary]