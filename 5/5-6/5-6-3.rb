# Timeオブジェクトは加算、減算を行える
now = Time.now

p now
p now + 1
p now - 1


# 減算を行う場合には差分となる秒数が浮動小数点で返る
sleep 1
n = Time.now
p n - now