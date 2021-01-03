# whileは条件式が真である限り中の式を繰り返し実行する
languages = %w(Perl Python Ruby)
i = 0

while i < languages.length
  puts "Hello, #{languages[i]}"
  i += 1
end


# untilは与えられた式が真を返すまで中の式を繰り返し実行する
i = languages.length - 1

until i < 0
  puts "Hello, #{languages[i]}"
  i -= 1
end