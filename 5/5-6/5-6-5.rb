# strftimeメソッドを用いるとTimeオブジェクトから日時を表す文字列を任意のフォーマットで得ることができる。
now = Time.now
# %○でそれぞれ意味のある文字列に変換される
p now.strftime('%Y/%m/%d %H:%M:%S')

# 数字で桁数を指定
p now.strftime('%Y')
p now.strftime('%010Y')

# _で、0埋めではなく空白埋めにする
p now.strftime('%_10Y')

# -で左よせにする
p now.strftime('%m')
p now.strftime('%-m')

# #で大文字であれば小文字に、小文字であれば大文字にする
p now.strftime('%p')
p now.strftime('%P')
p now.strftime('%#p')
p now.strftime('%#p')


# ^で大文字にする
p now.strftime('%B')
p now.strftime('%^B')