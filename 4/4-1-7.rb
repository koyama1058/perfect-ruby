# メソッドのオーバーライド
class Parent 
  def greet
    puts 'Hi'
  end
end

class Child < Parent
  def greet(name)
    puts "Hi, #{name}"
  end
end

parent = Parent.new
parent.greet

child = Child.new
child.greet('ruby')


# メソッドの中でsuperを呼び出すスーパークラスに定義されている同名のメソッドが呼び出せる。
class GrandChild < Child
  def greet(name)
    # サブクラスで受け取った引数と別の値を渡したい場合には、superに引数を渡す
    super('python')

    puts "Nice to meet you!"
  end
end

grandchild = GrandChild.new
grandchild.greet 'ruby'