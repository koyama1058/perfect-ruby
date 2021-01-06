module Greetable
  def greet_to(name)
    puts "Hello, #{name}. My name is #{self.class}"
  end
end

# モジュールで定義されたメソッドをクラスのインスタンスメソッドとして取り込むにはincludeを使う
class Alice
  # GreetableモジュールをAliceクラスに取り込んでいる
  include Greetable

  # モジュールから取り込んだメソッドもオーバーライドできる。
  def greet_to(name)
    # superを呼び出すとモジュールに定義されたメソッドが呼び出される
    super

    puts 'Nice to meet you!'
  end
end

alice = Alice.new
alice.greet_to 'Bob'




# Enumerableモジュールをincludeしているためcountやmapを呼び出せている
class FriendList
  include Enumerable

  def initialize(*friends)
    @friends = friends
  end

  def each
    for v in @friends
      yield v
    end
  end
end

friend_list = FriendList.new('Alice', 'Bob', 'Charlie')

puts friend_list.count
p friend_list.map {|v| v.upcase}
p friend_list.find {|v| /b/ === v}



# 承継できるクラスは1つだけなのに対してincludeできるモジュールの数に制限はない
module ModuleA
  def form_a
    puts 'A'
  end
end

module ModuleB
  def form_b
    puts 'B'
  end
end

class MyClass 
  include ModuleA
  include ModuleB
end

my_object = MyClass.new
my_object.form_a
my_object.form_b



module ModuleC
  def form_c
    puts 'C'
  end
end

# モジュールは他のモジュールをincludeできる
module ModuleD
  include ModuleC
  def form_d
    puts 'D'
  end
end

class MyClass 
  include ModuleD
end

my_object = MyClass.new
my_object.form_c
my_object.form_d