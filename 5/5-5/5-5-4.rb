# 複数行の文字列から行ごとの文字数を取得する例
lines = <<EOM
Alice
Bob
Charlie
EOM

enum = lines.each_line
puts enum.map {|line| line.length}



# with_indexは繰り返しの度にインクリメントされる値と一緒に繰り返し処理を行うことができる。
%w(Alice Bob Charlie).each.with_index do |name, index|
  puts "#{index}: #{name}"
end


# nextは次の要素を返し、rewindは初めから繰り返し処理を行える
enum = [4,4,2,3].to_enum

puts enum.next
puts enum.next
puts enum.next

enum.rewind

puts enum.next
puts enum.next
puts enum.next
puts enum.next
# 次の要素がないため例外が発生する
# puts enum.next


# nextの例外ではloopを使ってブロック内で発生した例外StopIterationを補足してループを終了させることができる
enum = [4,4,2,3].to_enum
loop do
  puts enum.next
end


# Enumeratorオブジェクトを使うと2つの配列に対して同時に繰り返しを行う処理を行うことができる
people = %w(Alice Bob Charile).to_enum
ages = [14,32,28].to_enum

loop do
  person = people.next
  age = ages.next
  puts "#{person} (#{age})"
end


# Enumeratorオブジェクトに対して、mapやselectの様なブロックの戻り値を使用するタイプのメソッドを呼び出す場合、戻り値に当たる値はfeedで渡す。
# メソッド自体の戻り値はStopIteration#resultで得ることができる
enum = %w(Alice Bob Charlie).select

loop do
  begin
    person = enum.next

    enum.feed /li/ === person
  rescue StopIteration => e
    p e.result

    break
  end
end