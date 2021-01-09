# 配列への変換

str = "Alice, Bob, Charlie"

# splitは文字列の中の特定の文字をセパレーターとして分割した配列を返す。
# 文字列で指定する例
p str.split(', ')
# 正規表現で指定する例
p str.split(/,\s+/)

# 第二引数は分割する最大の数を指定できる。以下の例は２つの配列になるとそれ以上分割しない
p str.split(/,\s+/, 2)


# 以下は全てレシーバーから文字一つ一つの配列を得る記述
p 'Alice'.split(//)
p 'Alice'.split('')
p 'Alice'.each_char.to_a