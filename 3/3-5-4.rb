# メソッド名はスネークケースで記述するのが一般的だが大文字で記述しても文法的には間違いではない。
def Hello
  puts 'Hello, my method!'
end

# 大文字で始まるメソッドをレシーバ/引数なしで呼び出す場合には括弧を省略することができない。（括弧を付けてメソッドの呼び出しであることを明示する必要がある）
Hello()