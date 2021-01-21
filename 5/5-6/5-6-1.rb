p Time.now
p Time.new

p Time.now.zone
# getutcは協定世界時を表す
p Time.now.getutc


now = Time.now

# UNIXエポック(1970年1月1日0時0分0秒)から経過秒数を、整数、不動小数点数、有理数で取得する
p now.to_i
p now.to_f
p now.to_r

# 文字列に変換
p now.to_s

# 年を取得
p now.year
# 月を取得
p now.month
# 日を取得
p now.day
# 時間を取得
p now.hour
# 分を取得
p now.min
# 秒を取得
p now.sec
# ナノ秒の部分を整数で返す
p now.nsec
# 曜日を日曜(0)から土曜(6)の整数で返す
p now.wday
# 1月1日を1として年を通しての経過日数を返す
p now.yday

# 任意の曜日か否かをture falseで返す
p now.sunday?