# 配列の展開
def greet_twice(name, first_message, second_message)
  puts "#{first_message}, #{name}."
  puts "#{second_message}, #{name}."
end


greetings = %w(Hello Hola)

# 実引数の頭に*をつけると、1つの配列を複数の引数として渡せる。配列をメソッド呼び出しの引数リストとして渡したい場合に便利。
greet_twice 'Ruby', *greetings