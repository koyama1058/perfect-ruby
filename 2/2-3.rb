if true
  puts 'Ping'
end

# falseとnil以外の全ての値は真として扱われる
str = 'Ping'

if str
  puts str
end


# 複数の条件式
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