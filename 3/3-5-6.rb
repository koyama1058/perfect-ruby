# メソッドの仮引数には、デフォルト値として任意の式を与えることができる。デフォルト値は「省略可能な仮引数と呼ばれる」
def greet(name, message = 'Hi')
  puts "#{message}, #{name}"
end

# messageはデフォルト値が代入され、"Hi, Ruby"と出力される
greet 'Ruby'
# messageはHelloが代入されて"Hello, Ruby"と出力される
greet 'Ruby', 'Hello'
# messageにnilが代入されてmessageの値はnilとなる。", Ruby"と出力される
greet 'Ruby', nil



def greet(name, message = 'Hi', suffix = '.')
  puts "#{message}, #{name + suffix}"
end
greet 'Ruby'
greet 'Ruby', 'Hello'
greet 'Ruby', 'Hello', ':)'
# 最後の引数を省略していると解釈されるため":), Ruby."と出力される
greet 'Ruby', ':)'