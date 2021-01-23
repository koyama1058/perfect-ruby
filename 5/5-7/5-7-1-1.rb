# openは第一引数に与えられたファイルパスのファイルを開きFileオブジェクトを返す
file = File.open('fname.txt')
# ファイルの内容を全て読み込む場合にはreadを呼び出す。
puts file.read

file.close

# File.openにブロックを渡した場合、ブロックはすすぐに実行され、ブロックが終了するとファイルは自動的に閉じられる
File.open 'fname.txt' do |file|
  puts file.read
end


# getsは一行ずつ読み込みながら処理する。ファイルの終端に到達するとnilを返す
File.open 'fname.txt' do |f|
  while line = f.gets
    puts line
    puts '一行ずつ処理しています'
  end
end


# 終端まで一行ずつ繰り返し処理するという用途にはeach_lineでより簡単に記述できる
File.open 'fname.txt' do |f|
  f.each_line do |line|
    puts line
    puts '二回目一行ずつ処理しています'
  end
end


# File.openはデフォルトでは読み込みモードでファイルを開く。書き込みモードで開く場合には第二引数にモードを表す文字列か定数の論理和を指定する
# 例えば'a'は追記書き込みモード。'w'は新規作成して書き込みモード
File.open 'fname.txt', 'a' do |f|
  f.write 'Hello'
end

# File.openの大三引数には作成するファイルのパーミッションを設定できる
File.open 'foo', File::WRONLY | File::CREAT do |f|
  f.puts 'puts'

  f.puts 

  f.print 'print'

  f.print "%03d", 7

  f.putc 97
end

# ファイル書き込みのためのより簡単な方法はクラスメソッドのFile.writeを用いる
File.write 'greeting.txt', 'Hello'