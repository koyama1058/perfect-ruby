# 繰り返し処理

# 文字ごとの繰り返し
'ブフウ'.each_char {|c| print "#{c}-"}

# バイトごとの繰り返し
'る'.each_byte do |byte|
  puts byte
end

# 行ごとの繰り返し
"Alice\nBob\nCharlie".each_line do |line|
  puts line
end

