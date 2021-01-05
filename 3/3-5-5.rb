# メソッドから明示的に呼び出しもとに戻るにはreturnを用いる
def greet(recipient)
  return false unless recipient

  "Hi, #{recipient.capitalize}"
end

p greet('alice')
# 引数が偽だった際にはreturnによりfalseを返している
p greet(nil)