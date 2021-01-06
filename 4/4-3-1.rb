# スーパークラスを指定しないで新しく定義したクラスはobjectクラスを承継する。
class MyClass
end

puts MyClass.superclass

o = Object.new

# どのクラスのオブジェクトか
p o.class
# Objextクラスのインスタンスか
p o.is_a?(Object)
# オブジェクトのIDは何番か
p o.object_id
# nilか
p o.nil?
# freezeされているか
p o.frozen?

# 自信をブロック引数にしてブロックを実行し、自信を返す
o.tap {|v| puts v}




class Ruler
  attr_accessor :length

  def initialize(length)
    self.length = length
  end

  def ==(other)
    length == other.length
  end
end


r1 = Ruler.new(30)
r2 = Ruler.new(30)
puts r1 == r2
puts r1 != r2

r2.length = 40
puts r1 == r2
puts r1 != r2