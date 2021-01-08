# Rationalは有理数を表現する
r = Rational(1, 3)

# 分母を得る
puts r.denominator
# 分子を得る
puts r.numerator

# 不動小数点数へ変換
puts r.to_f

# to_rはレシーバーをRationalオブジェクトに変換した値を返す
puts 0.5.to_r
puts 123.to_r
puts Time.now.to_r 
