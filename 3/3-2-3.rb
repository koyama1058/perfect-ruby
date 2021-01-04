# ループの途中でbreakを呼び出すとループ処理を中断できる。
languages = %w(Perl Python Ruby Smalltalk JavaScript)

# languages.each do |language|
#   puts language

#   if language == 'Ruby'
#     puts 'I found Ruby!!'

#     break
#   end
# end


# languages.each do |language|
#   puts language

#   if language == 'Ruby'
#     break 'I found Ruby!!'
#   end
# end



# nextを呼び出すと次の繰り返し処理に移る
languages.each do |language|
  puts language

  next unless language == 'Ruby'
  puts 'I found Ruby!!'
end


# redoはループ中でredoを呼び出すともう一度その繰り返しをやり直す。以下は要素が'Ruby'だった場合には"I found ruby"を永遠に繰り返す。
p languages
languages.each do |language|
  puts language

  if language == 'Ruby'
    puts 'I found Ruby'
    # redo
  end
end

