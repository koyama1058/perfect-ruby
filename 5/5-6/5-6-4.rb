# UNIXエポックからの経過秒数からTimeオブジェクトを得るための記述
a = Time.at(0)
p a

# UTCとして取得
p Time.at(0).getutc
# 遥か昔、遥か未来を取得する場合
p Time.at(-11676128400)
p Time.at(2208956400)

# utcを得るには以下の様に記述する。引数は年、月、日、時、分、秒、マイクロ秒を順番に渡す
p Time.utc(2011, 4, 1, 5, 30, 20, 100)

# 地方時を得る場合にも同様。年以下は省略できる
p Time.local(2011, 4, 1, 5, 30, 20, 100)
p Time.local(2011)

# utcやlocalメソッドにはto_aの戻り値を展開して渡すこともできる。
args = Time.now.to_a
# 配列の内容は[秒、分、時、日、月、年、曜日、その年の通算日数、夏時間か否か、タイムゾーン]が得られる
p args
p Time.utc(*args)
p Time.local(*args)