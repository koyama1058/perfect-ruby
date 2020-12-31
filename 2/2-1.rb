def hello(names)
  # ブロックを使って出力する方法
  names.each do |name|
    puts "HELLO, #{name.upcase}"
  end
  # 上記をブレースを使う方法
  names.each {|name|
  puts "HELLO, #{name.upcase}"
  }
end

rubies = ['MRI', 'jruby', 'rubnius']

hello(rubies)

# ファイルを読み込んで出力するプログラム
File.open '../README.md' do |file|
  puts file.read
end

# メソッドの返り値は最後に評価された式の値でreturnを記述した場合にはそれが戻り値
def add(a, b)
  return a + b
  puts 'この文字列は出力されない'
end

add(1, 1)

# セミコロンで区切ると複数行を1行にまとめられる
name = 'ruby'; puts(name.upcase)

