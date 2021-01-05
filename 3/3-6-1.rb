puts 1
# putsは末尾に改行がない場合には改行を付けて出力する（改行がついている場合には新たな改行は付けない）
puts "Hi\n"
# putsは引数を複数指定することができる
puts "Alice", "Bob"



# printは引数に受け取ったオブジェクトを順番に標準出力する。改行文字の挿入はされない
print 'Hi'
print "1", "0.5", "foo"



printf '%04d', 1



# pはオブジェクトを人間が理解しやすい文字列として出力するデバック用のメソッド
p 4423
p 4423, [24, 1, 365]




class Ruler
  def initialize(length)
    @length = length
  end
  # puts,print,printfメソッドの際に出力される
  def to_s
    '=' * @length
  end
  # pメソッドの際に出力される
  def inspect
    "Ruler(length: #{@length}"
  end
end

ruler = Ruler.new(30)

puts ruler

p ruler


# warnは与えられた引数を$stderrに出力する
warn 'An error occurred!'



# getsは標準入力から1行読み取ってそれを返す
print "足される数:"
a = Integer(gets)
print "足す数:"
b = Integer(gets)
puts "合計: #{a + b}"
