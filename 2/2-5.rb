# クラスとそのインスタンスをスコープとした変数は@@をつけてクラス変数とする
class MyClass
  @@cvar = 'Hello, my object!'

  def cvar_in_method
    puts @@cvar
  end

  def self.cvar_in_class_method
    puts @@cvar
  end
end

# クラスからインスタンスを作る
my_object = MyClass.new
# インスタンスを作った後にメソッドを呼び出す
my_object.cvar_in_method
MyClass.cvar_in_class_method



# インスタンス変数は@をつける。インスタンス変数はインスタンスの中だけ参照できる変数。
# インスタンス変数にアクセスするメソッドが欲しい場合には「attr_accessor :インスタンス変数名」を記述する
class Ruler
  # def length=(val)
  #   @length = val
  # end

  # def length
  #   @length
  # end
  attr_accessor :length
  # クラスのインスタンス生成時にインスタンスの初期化を行う
  # def initialize(length)
    # @length = length
  # end

  def self.pair
    [Ruler.new, Ruler.new]
  end
end
# ruler = Ruler.new(30)
# puts ruler.length
puts Ruler.pair



# クラスの承継
class Parent
  def hello
    puts 'Hello, Parent class!'
  end
end
# サブクラス名<スーパークラス名
class Child < Parent
  def hi 
    puts 'Hello, Child class!'
  end

  # サブクラスで再び定義（＝オーバーライド）
  def hello 
    # superはスーパークラスで定義されている同じ名前のメソッドを呼び出す
    super
    puts 'Hello, Child class オーバーライド'
  end
end

child = Child.new
# スーパークラスのインスタンスメソッドを呼ぶことができる
child.hello
child.hi