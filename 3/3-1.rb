a, b, c = true, true, false

puts a or b && c
puts (a or b) && c



class MyObject
  def ==(other)
    self.class == other.class
  end
end

MyObject.new == MyObject.new



puts 1 + 1
puts 'pre' + 'view'
puts 2 + 2
# Aが３つ出力される
puts 'A' * 3



a = [1,2,3]
b = [1,2,3]

puts a == b
# equal?はオブジェクトを比較しているためfalseが出力される
puts a.equal?(b)
# eql?は文字列を比較しているためtrueが出力される（オブジェクトを比較していない）
puts a.eql?(b)

# 整数と浮動小数点数を==で比較するときには型変換が行われて以下の場合にはtrueを返す
puts 42 == 42.0