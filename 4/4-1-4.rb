# クラスに対して呼び出せるメソッドをクラスメソッドという
class Ruler
  attr_accessor :length
  # クラスメソッドにはself.をつける
  def self.pair
    [new, new]
  end
end

p Ruler.pair




class Ruler
  attr_accessor :length
  # 以下全てクラスメソッドにすることができる。ネストすることでインスタンスメソッドとの区別がしやすくなる
  class << self
    def pair
      [new, new]
    end

    def trio
      [new, new, new]
    end
  end
end

p Ruler.pair
p Ruler.trio