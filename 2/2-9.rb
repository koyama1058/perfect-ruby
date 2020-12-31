# エラーが発生しても処理を継続したい場合にはbegin節に記述し、例外処理をrescue節に記述する
begin
1 / 0
# rescue節には例外クラスを指定できる。指定しない場合にはStandardErrorを継承した例外を捕捉する
rescue ZeroDivisionError
  puts 'ゼロ徐算でエラーになりました。'
end
puts 'エラーがあっても実行される' 