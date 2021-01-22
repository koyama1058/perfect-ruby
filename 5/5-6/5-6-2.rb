# Timeのオブジェクトは1秒以下の時間を扱うことができる。以下は微妙に時間が異なっているためfalseになってしまう
a = Time.now
b = Time.now
p a == b


# TimeクラスはComparableモジュールをincludeしており、Timeオブジェクト同士を比較できる
post = Time.now
sleep 1
future = Time.now

p post <=> future
p post < future
p post <= future
p post > future
p post >= future