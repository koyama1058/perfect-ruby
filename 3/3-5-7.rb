# 可変長引数
# メソッドの定義で仮引数の頭に*をつけると、そのメソッドは任意の数の引数を配列として受け取るようになる。1つのメソッドに1つだけ指定できる。
def greet(name, *messages)
  messages.each do |message|
    puts "#{message},#{name}"
  end
end
# messageに'こんにちは''Hello'二つが配列として*messagesに代入される
greet 'Ruby', 'こんにちは', 'Hello'




# *は単に引数を無視したい場合に使うことができる
def greet(name, *)
  puts "Hello,#{name}"
end

# 'こんにちは!','foo'は無視される
greet 'Ruby', 'こんにちは!', 'foo'
