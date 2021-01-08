# Stringクラス

# 空文字列かを返す
puts 'foobar'.empty?
puts ''.empty?

# 文字列の長さを返す
puts 'foobar'.length
puts 'てにをは'.length
puts 'てにをは'.bytesize

# 引数の文字列をレシーバーが含んでいるか
puts 'Alice Bob Charlie'.include?('Bob')

# 引数に指定した文字列から始まるか
puts 'Highlight'.start_with?('High')

# 文字列の連結
puts 'Pine' + 'apple'
# 文字列を3回繰り返す
puts 'Hello' * 3
# フォーマットした文字列
puts 'Result: %04d' % 42


# 文字列オブジェクトはミュータブル(=変更可能)で破壊的に変更できる。<<を使うと左辺の文字列に右辺の文字列が破壊的に追加されます。
str = 'Pine'
puts str << 'apple'
