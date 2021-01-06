# autoloadは引数に指定したクラス/モジュール名が最初に参照された時に、外部ファイルを自動的にrequireする
# 第一引数にはクラス/モジュール名の文字列かシンボルを渡す。第二引数にはrequireするファイル名を渡す。
autoload :MySweets, 'my_library/my_sweets'

# ここでrequireされる
MySweets


# ネストしたクラス/モジュールのautoloadは以下のように記述する
module MySweets
  autoload :Cake, 'my_library/my_sweets/cake'
end

MySweets::Cake