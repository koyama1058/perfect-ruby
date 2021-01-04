# __END__ではプログラムの終点を明示できる。以降はrubyプログラムとして実行されない。
# __END__以下はDATAといつ定数にFileオブジェクトとして保持されている
DATA.each_line do |line|
  puts line 
end

__END__
いろはにほへと
ちりぬるを