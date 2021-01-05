# クラス名はキャメルケースで命名されることが慣習。
class MyClass
  # クラス特有の値を定数として定義している
  DEFAULT_VALUE = 4423
end

puts MyClass::DEFAULT_VALUE


# initializeは初期化処理に使われる
class MyClass
  def initialize
    puts 'Initializing...'
  end
end

my_object = MyClass.new
