# モジュール関数とはprivateなインスタンスメソッドであると同時に、モジュールの特異メソッドでもあるメソッドを指す
# 組み込み式のモジュール関数Math#sqrtを呼び出す例
# モジュールをレシーバーにして呼び出す例
puts Math.sqrt(4)
# モジュールをincludeしてレシーバーなしで呼び出す例
include Math
puts sqrt(4)



# モジュールに定義したメソッドをモジュール関数にするための記述
module MyFunctions
  def my_module_function
    puts 'Called!'
  end
  module_function :my_module_function
end



# 複数のモジュール関数を定義するための記述
module MyFunctions
  module_function
  def my_first_function
    puts 'first'
  end

  def my_second_function
    puts 'second'
  end
end
