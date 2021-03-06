# 先読みとあと読み

# (?<=丁目)はあと読み部分で番地名の後ろにくる文字列を指定している。(?=番地)は先読み部分で番地名の先にくる文字を指定している
pattern = /(?<=丁目)(\d+)(?=番地)/

p pattern.match('東京都新宿区市谷左内町21丁目13番地')


# 否定先読みと否定後読み
# 先読みとあと読みの逆の動作をする
# 以下は2012で始まらないものだけにマッチするもの
pattern = /(?<!2012)-(?<month_and_day>\d{2}-\d{2})/

p pattern.match('2012-01-01')
p pattern.match('2011-01-01') 