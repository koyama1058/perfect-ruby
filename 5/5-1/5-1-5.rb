# Integerクラス

# odd?はレシーバーは奇数か
puts 1.odd?
# even?はレシーバーは偶数か
puts 2.even?

# nextとsuccは次の値を返す
puts 2.next
puts 2.succ
# predは前の値を返す
puts 2.pred


# to_sは文字列に変換した値を返す
puts 30.to_s
# 引数に基数を指定できる
puts 30.to_s(2)
puts 30.to_s(8)
puts 30.to_s(16)


# to_iはレシーバーを整数として表現した結果を返す
puts '123'.to_i
puts Time.now.to_i
# 0を返す
puts 'a'.to_i

# 以下も整数以外のオブジェクトを整数に変換できる。to_iとの違いは変換できない時に以下では例外を発生させる
puts Integer('4423')
puts Integer('0xFF')
puts Integer(3.14)
# 以下は例外が発生する
# puts Integer(nil)
# puts Integer('abc')

# chrは数値からそれぞれに対応する文字（1バイトの文字列)を得られる。
puts (65..70).map {|n| n.chr }
# chrは引数にエンコーティングを指定する
puts 12523.chr(Encoding::UTF_8)
puts 0x30d3.chr(Encoding::UTF_8)


# 0.1.2と順番に表示
3.times do |num|
  puts num
end

# 1.2.3と順番に表示
1.upto 3 do |num|
  puts num
end

# 3.2.1と順番に表示
3.downto 1 do |num|
  puts num 
end


# 数値を桁ごとに分解するためにはdigitsを使う。配列ないの順番は1の位から桁上がりする。(正の数値に対してのみ呼び出すことができる)
puts 20161224.digits

# 引数に渡すと基数に変換してから値を返す
puts 7.digits(2)
puts 31.digits(16)