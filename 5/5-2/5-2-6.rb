# encodingでは文字列のエンコーディング情報をEncodingオブジェクトとして返す
puts 'こんにちは'.encoding


str = 'こんにちは'
puts str.encoding

# endoceの引数に特定のエンコーディングを指定すると指定したエンコーディングの新しい文字列を返す
new_str = str.encode(Encoding::EUC_JP)
puts new_str.encoding


str.encoding
# encode!は破壊的メソッドであり、指定したエンコーディングにした自信へ変更して返す
str.encode!(Encoding::EUC_JP)
puts str.encoding


utf8 = 'こんにちは'.encode('UTF-8')
eucjp = 'こんにちは'.encode('EUC-JP')


# 同じ文字の比較でもエンコーディングが異なれば同値にはならない
p utf8 == eucjp
p utf8.eql?(eucjp)


# エンコーディングの異なる文字列どうしを連結しようとするとエラーが表示される
# puts utf8 + eucjp


# ASCII互換エンコーディングな文字列と、ASCII文字だけで構成された文字列どうしの比較や結合はエンコーディングに関わらず行うことができる
encjp = 'Hello'.encode('EUC-JP')
utf8 = 'Hello'.encode('UTF-8')
utf16 = 'Hello'.encode('UTF-16')
ascii = 'Hello'.encode('ASCII-8BIT')

p utf8 == encjp
p utf8 == ascii
p utf8 == utf16

puts utf8 + eucjp
puts utf8 + ascii