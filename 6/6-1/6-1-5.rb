# クラスオブジェクトを変数に代入するとnameがnilとなる無名のクラスができる
p klass = Class.new
p klass.name

# クラス名がなくてもインスタンスを作成することができる
p obj = klass.new
p obj.class

# 無名のクラスを定数に代入するとその時点で定数めいがクラス名として設定される
NameClass = klass
p klass.name