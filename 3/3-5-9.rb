# ブロック
%w(Alice Charlie).each do |name|
  puts "Hello, #{name}"
end


# yield
def block_sample
  puts 'stand up'
  # ブロックがついている場合にはブロック内を出力
  yield if block_given?
  puts 'sit down'
end

# メソッドの中でyieldを呼び出すと受け取ったブロックを実行する
block_sample do
  puts 'walk'
end

block_sample




# ファイルに書きこむ処理を記述する場合
# ブロックなしで呼び出されると戻り値としてFileオブジェクトを返し、ファイルを閉じる記述をする必要がある
file = File.open('without_block.txt', 'w')
file.puts 'without block'
file.close

# ブロック付きで呼び出された時はFileオブジェクトがブロックの引数として与えられ、ブロックの終了と共に自動的に閉じられる・
File.open 'with_block.txt', 'w' do |file|
  file.puts 'with block'
end



def display_value
  puts yield
end

# 4423と表示される
display_value do
  4423
end

# 42と表示
display_value do
  next 42
end

# breakにより処理が中断されるため、ブロックの戻り値は出力されない
display_value do
  break 23
end


# 今の年数を出力するメソッド
def with_current_time
  yield Time.now
end

with_current_time do |now|
  puts now.year
end


# ブロック引数なし
with_current_time do
  puts 'Hi'
end

# ブロック引数が多い
with_current_time do |now, something|
  puts something.inspect
end





def default_argument_for_block
  yield
end

# ブロック引数にデフォルト値を指定
default_argument_for_block do |val = 'Hi'|
  puts val
end





def flexible_arguments_for_block
  yield 1,2,3
end

# ブロック変数に可変長引数を指定
flexible_arguments_for_block do |*params|
  puts params.inspect
end
