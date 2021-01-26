# class定義式を使う方法とClass.newを使う方法の違いは定義式を使った場合にはスコープが定義式の内と外でかわってしまう
external_scope = 1

class ExpDefineClass
  # puts external_scope
  # =>NameErrorが発生してしまう(スコープの範囲外)
end


# Class.newの場合、ブロックでクラスを定義するため外側のスコープを参照することが可能
NewDefineClass = Class.new do
  puts external_scope
end
