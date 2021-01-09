# 文字列の整形
# stripは前後の空白文字（半角スペースと\t\r\n\f\v)を取り除いた文字列を返す
str = " hi \t "

# 両端から空白を除去
puts str.strip
# 右端から空白を除去
puts str.rstrip
# 左端から空白を除去
puts str.lstrip

# chompは文字列の末尾にある改行コードを１つだけ取り除いた文字列を返す
puts "hi  \n\n".chomp

# chopは文字種に関わらず文字列の末尾の１文字を取り除いた文字列を返す
puts 'Users'.chop


# squeezeは文字列の中で同じ文字が連続している場合に１つにまとめることができる
puts 'wooooooooo'.squeeze
# 引数にまとめる対象の文字を指定することもできる
puts 'aabbccdd'.squeeze('abc')
puts 'aabbccdd'.squeeze('a-c')


# downcaseは全てを小文字にした文字列を返す。
puts 'ABC'.downcase
# upcaseは全てを大文字にした文字列を返す
puts 'abc'.upcase
# swapcaseは大文字と小文字を入れ替えた文字列を返す
puts 'Abc'.swapcase
# capitalizeは先頭の文字だけを大文字にした文字列を返す
puts 'tiTle'.capitalize


# subは第一引数に置換対象を正規表現で指定し、第二引きsには置き換える文字列を指定すると最初にマッチした文字列を置換する
puts '24-1-365'.sub(/[0-9]+/, 'x')
# gsubはマッチする全てを置換する
puts '24-1-365'.gsub(/[0-9]+/, 'x')
# 第二引数の代わりにブロックを渡せる。マッチした値によって置換する文字列を変化させることができる。
puts '24-1-365'.gsub(/[0-9]+/) {|str| str.to_i.succ}



str = ' hi '
# strip!は破壊的メソッドであり前後の空白文字を取り除いて自身を更新する
puts str.strip!
# レシーバーに変更がなかった場合にはnilを返す
p str.strip!

puts 'dam'.reverse
puts 'ダム'.reverse

str ='dam'
str.reverse!
puts str