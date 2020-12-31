# シングルクォートとダブルクォートの違い
puts 'result:\t#{1+1}'
puts "result:\t#{1+1}"



# 配列を生成
a = %w(Alice Bob Carol)
# シンボルの配列を生成
b = %i(red green blue)
p a
p b



# ..は末尾を含む。...は末尾を含まない。
puts (1..5).include?(5)
puts (1...5).include?(5)

# 日時にも..は使用可能
# Time.atでTimeオブジェクトを生成
vacation = Time.at(1343746800)..Time.at(1346425199)
puts vacation.begin
puts vacation.end

# 文字列にも..は使用可能
abc=('a'..'c')
abc.each do |c|
  puts c
end

# 正規表現
pattern = /[0-9]+/

# ===は文字列が正規表現にマッチするかを真偽値で返す
puts pattern === 'HAL 9000'
puts pattern === 'Space Odyssey'

# =~は最初にマッチしたいちを整数で返す
puts pattern =~ 'HAL 9000'
p pattern =~ 'Space Odyssey'


# 手続きオブジェクトの戻り値は最後に評価された値
greeter = Proc.new {|name|
  # capitalizeは最初の文字を大文字にする
  name = name.capitalize
  puts "Hello, #{name}!"
}
# 手続きオブジェクトはcallを呼び出すと実行される
# nameにprocが代入される
greeter.call 'proc'
greeter.call 'ruby'