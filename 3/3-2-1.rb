# if文の記述
n = 2 

if n.zero?
  puts '0でした'
elsif n.even?
  puts '偶数でした'
elsif n.odd?
  puts '奇数でした'
else
  puts 'わかりません'
end



# unlessの記述。unlessにはelsifに相当するものはない
n = 1

unless n.zero?
  puts '0ではありませんでした'
else
  puts '0でした'
end



# darwinはアップルが開発するUnix系のPOSIX準拠オペレーティングシステム (OS)
# RUBY_PLATFORMはrubyが動作しているプラットフォーム
platform = 
# もしrubyが動作しているプラットフォームがMacの場合にはMacと出力する
  if /darwin/ =~ RUBY_PLATFORM
    'Mac'
  else
    'Others'
  end

# platformはあくまで変数
puts platform



# 比較対象が一つの場合にはcaseを持ちるとすっきりと記述できる
stone = 'ruby'
case stone
# when以降にはcaseと===関係の条件付けするものを記述する
when 'ruby'
  puts '7月'
# 複数の条件を記述する際には,をつける
when 'preidot', 'sardonyx'
  puts '8月'
else 
  puts 'よくわかりません'
end



# 上記を正規表現で記述すると以下のようになる
stone = 'ruby'
case stone
when /ruby/
  puts '7月'
when /preidot|sardonyx/
  puts '8月'
else 
  puts 'よくわかりません'
end



# 最後に評価された値を返すため、代入やメソッドの引数に使用できる
stone = 'ruby'
delected =
  case stone
  when /ruby/
    puts '7月'
  when /preidot|sardonyx/
    puts '8月'
  else 
    puts 'よくわかりません'
  end
puts delected


when節に記述した式の後にthenを置くことで一行で記述できる
case stone
when /ruby/             then '7月'
when /preidot|sardonyx/ then '8月'
else 'よくわかりません'
end