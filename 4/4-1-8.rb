# 特異メソッド
class Foo
end

foo = Foo.new
bar = Foo.new
# オブジェクトに対して固有のメソッドを持つことができる。以下の場合にはFooクラスのオブジェクトbarに対して固有のsole_methodを定義している。
def bar.sole_method
  puts 'Called'
end

bar.sole_method
# sole_methodはbarに対する固有の特異メソッドであるためにfooに対しては呼び出すことができない。
# foo.sole_method




class Foo
  def override_me
    puts "in Foo class"
  end
end

bar = Foo.new

# 特異メソッドの中でsuperを呼び出すと、クラスに定義されている同名のメソッドが呼び出される
def bar.override_me
  super

  puts "in singleton method"
end

bar.override_me