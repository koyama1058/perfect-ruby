str = 'The Answer to life, the universe, and everything: 42'

# 位置を指定
puts str.slice(4)
# 開始位置と取得文字数で指定
puts str.slice(4, 6)
# 文字列を範囲で指定
puts str.slice(4..9)
# 正規表現で指定
puts str.slice(/[0-9]+/)
# 第一引数に負の数値が指定された場合には文字列の末尾から逆方向に数える
puts str.slice(-2, 2)


# sliceのショートハンドとして下記のように記述できる
puts str[4]
puts str[4, 6]
puts str[4..9]
puts str[/[0-9]+/]


# slice!はレシーバーを更新する破壊的メソッドで戻り値として返した部分文字列はレシーバーから削除される
str.slice!(-2, 2)
puts str