# クラスを定義する際に1つだけスーパークラスを指定できる。指定がなければ自動的にObjectクラスを承継する。
class Parent
  def greet
    puts 'Hi'
  end
end

class Child < Parent
end

puts Child.superclass
child = Child.new
child.greet



# サブクラスからはスーパークラスの定数を参照できる
class Parent
  def initialize
    @ivar = 'content'
  end
  PARENT = 'constant in parent'
end

class Child < Parent
end

# Childクラスの定数一覧を表示させる
puts Child.constants
# 定数を出力する
puts Child::PARENT
