# IOオブジェクトは今自身がどの位置にいるかとういアクセス位置についての情報を持っている。rewindを使うと先頭に戻ることができる
File.open 'fname.txt', 'a+' do |f|
  f.puts '文字列を追記'

  f.rewind
  # rewindがあることで先頭から末尾までの文字列を取得して出力できる
  puts f.read
end

# seekはファイルの先頭・現在位置・末尾などの特定の位置からの相対的ないちを指定する
File.open 'fname.txt', 'a+' do |f|
  # デフォルトでは先頭（IO::SEEK_SET)
  f.seek 10
  f.puts "10行目に出力"
  # IO::SEEK_CURは現在のいち
  f.seek -3, IO::SEEK_CUR
  f.puts "7行目に出力"
  # IO::SEEK_ENDは末尾
  f.seek -2, IO::SEEK_END
  f.puts "末尾から２戻った位置に出力"
end


# pos=は任意の位置に移動させることができる(文字目)
File.open 'fname.txt', 'w' do |f|
  f.pos = 30
  f.puts "30文字目です"
end
