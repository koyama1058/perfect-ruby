# roundは自身に近い整数に丸める。(halfオプションで偶数丸めが選択可能)
puts 2.4.round
puts 2.5.round
# 丸た結果偶数（＝偶数丸め）になるため2になる
puts 2.5.round(half: :even)
puts -1.5.round
puts 125.round(-1)
puts 125.round(-1, half: :even)
puts 125.round(-2)
# ceilは自身と等しいか自身より大きい整数のうち最小のものを返す
puts 1.4.ceil
puts -1.5.ceil
# floorは自身と等しいか、自身より小さい整数のうち最大のものを返す
puts 1.5.floor
puts -1.4.floor
# truncateは自身と0の間で、自身に最も近い整数を返す
puts 1.5.truncate
puts -1.5.truncate