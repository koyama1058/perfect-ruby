# undefでメソッドの定義を取り消すことができる
def greet
  puts 'hola'
end

greet
puts 'hi'

# 自分で定義したgreetと組み込みのメソッドのputsを取り消す
undef greet, puts

# 実行するとメソットが定義されていないためエラーがでる
# greet 
# puts 'hi'