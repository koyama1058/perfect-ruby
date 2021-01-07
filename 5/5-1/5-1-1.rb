puts 0.zero?
puts 3.zero?
# nonzero?は自身がゼロの時 nil を返し、非ゼロの時 self を返す。
puts 0.nonzero?
puts 3.nonzero?
# real?は常に true を返します。
puts 1.23.real?
puts 1.23.integer?
puts 123.real?
puts 123.integer?

# negative?はself が 0 未満の場合に true を返します。そうでない場合に false を返します。
puts -1.negative?
puts 0.negative?
# positive?はself が 0 より大きい場合に true を返します。そうでない場合に false を返します。
puts 0.positive?
puts 1.positive?

puts 1 + 1
puts 1 - 1
puts 2 * 2
# integer同士の徐算の余りは切り捨てられて整数が戻り値となる。右辺か左辺が浮動小数点であれば戻り値は浮動小数点になる
puts 10 / 3
puts 10.0 / 3
# 余り
puts 10 % 3
# べき乗
puts 10 ** 2