# \dは0から9の文字がマッチする。また繰り返しの回数を具体的に指定したい場合には数字をブレースで囲む。
# 携帯電話らしき文字列がマッチする正規表現の例
pattern = /\d{3}-\d{4}-\d{4}/

p pattern === '080-1234-5678'
p pattern === '03-1234-5678'