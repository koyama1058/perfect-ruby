# クラス定義のネスト
# ネストしたクラス動詞には承継関係のような関係はない
class My
  class SweetClass
  end
end

puts My.new
# ネストしたクラスを参照するには::演算子を使用する
puts My::SweetClass.new




VALUE = 'toplevel'

class Foo
  VALUE = 'in Foo class'

  def self.value
    VALUE
  end
end

# FooクラスからVALUEを参照するとFoo::VALUEの値が返る。もしFoo::VALUEが定義されていなければトップレベルが持つ値を返す。
puts Foo.value




# 定数の探索は自身からトップレベル方向に進んで最初に見つかった定数が参照される
VALUE = 'toplevel'

class Foo
  VALUE = 'in Foo class'
  
  class Bar
    def self.value
      VALUE
    end
  end
end

# Barから近いFooクラスのVALUEが参照される
puts Foo::Bar.value
