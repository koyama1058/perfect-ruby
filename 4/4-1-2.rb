class MyClass
  def method_a
    puts 'method_a called'
  end
  # 同じクラスのインスタンスメソッドを呼び出している
  def method_b
    method_a
  end
end

my_object = MyClass.new
my_object.method_b


# メソッド名に疑問符をつける場合には真偽値を返すメソッドで感嘆符はプログラマに対して注意を促したいメソッドの名前につける場合が多い
class Brownie
  def initialize
    @baked = false
  end

  def bake!
    @baked = true

    self 
  end

  def baked?
    @baked
  end
end

b = Brownie.new
puts b.baked?
puts b.bake!
puts b.baked?



# 破壊的メソッドに対しては感嘆符をつける習慣がある
str = 'abc'
puts str.reverse
puts str

# 破壊的メソッド（strは更新される)
puts str.reverse!
puts str

# 処理に失敗した際に例外を発生させる方のメソッド名には感嘆符をつける習慣がある
# 失敗するとfalseを返す
# user.save
# 失敗すると例外を発生させる
# user.save!