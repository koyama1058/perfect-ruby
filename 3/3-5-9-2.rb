# 仮引数の先頭に&をつけるとメソッドに渡されたブロックを仮引数として受け取ることができる
def block_sample(&block)
  puts 'stand up'

  block.call if block

  puts 'sit down'
end

block_sample do
  puts 'walk'
end



# メソッドの呼び出しで引数の頭に&をつけると引数をブロックとして渡せる
people = %w(Alice Bob Charlie)
block = Proc.new{|name| puts name}

people.each &block




p1 = Proc.new {|val| val.upcase}
p2 = :upcase.to_proc

puts p1.call('hi')
puts p2.call('hi')



# 以下の記述はどちらも同じ処理になる
p people.map {|person| person.upcase}
p people.map(&:upcase)


def write_with_lock
  File.open 'time.txt', 'w' do |f|
    # LOCK_EXはファイルを排他的ロックする
    f.flock File::LOCK_EX

    yield f
    # LOCK_UNはファイルのロックを解除する
    f.flock File::LOCK_UN
  end
end

write_with_lock do |f|
  f.puts Time.now
end
