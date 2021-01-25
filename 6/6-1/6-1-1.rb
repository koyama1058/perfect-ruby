# Classクラスはどの様なクラスを承継しているかを確認するためには以下の様に記述する
p Class.ancestors
#  => [Class, Module, Object, Kernel, BasicObject]
# Classクラスの親クラスはModuleであることがわかる。

# 継承したメソッドを除いた特定のクラスで定義されているメソッド名を調べるためにはinstance_methodsにfalseを渡すと確認することができる
p Class.instance_methods(false)
# => [:allocate, :superclass, :new]
# allocateはinitializeメソッドを実行せずにインスタンスを作るメソッド
# newはinitializeを実行してインスタンスを作るメソッド
# superclassはクラスの親クラスを返るメソッド  