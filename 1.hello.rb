puts "hello, world!"

# irbは複数行の処理でも記述可能

# クラスは大文字で初めてキャメルケースを用いる
class SampleClass
end

# モジュールは大文字で初めてキャメルケースを用いる
module SampleModule
end

# メソッドは小文字で書きスネークケースを用いる
def sample_method
end

# 真偽値を返すメソッド名は末尾に”？”をつける
def happy?
  true
end

# 変数名にはスネークケースで記述する
sample_variable = 'sample'

# 複数行で書く場合にはdo...endを用いる
1.upto(2) do |n|
  puts n
end

# 1行で書く場合には{...}の書き方をする
1.upto(2) {|n| puts n }