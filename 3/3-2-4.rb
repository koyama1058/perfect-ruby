# returnはそのファイルの後述のプログラムは実行されず呼び出しもとのrequireやrubyの処理系に処理が戻る
# ただし直接rubyコマンドに渡して実行するとreturn以下の処理も実行される
# つまり呼び出されるとreturn以下は実行されず直接実行するとreturn以下も実行される
puts 'こんにちは'

return unless $0 == __FILE__

puts 'このファイルは直接実行されたようです'