
foo = 'foo in toplevel'

def desplay_foo
  puts foo
end

puts foo
# メソッドの外で定義されたローカル変数をメソッドの中で使うことはできない
# desplay_foo



# ブロックの外で定義されたローカル変数はブロックの中で使える
greeting = "Hello,"
people = ['Alice', 'Bob']

people.each do |person|
  puts greeting + person
end
# ブロックの中で定義されたローカル変数はブロックの外からは見えない
# puts person

# 定数は大文字のアルファベットで始める
FOO_BAR = 'bar'
puts FOO_BAR
# rubyでは定義ずみの定数は際代入できるが警告メッセ時がでる。
FOO_BAR = 'foo'
puts FOO_BAR
# メソッドの中で定数を定義することができない
def set_foo
  # FOO_BAR = 'bar'
end

