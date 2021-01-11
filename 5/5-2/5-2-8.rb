# 文字列オブジェクトStringを作成する際に内部バッファのサイズを指定できる。内部バッファのサイズはcapacityキーワード引数で指定する
s = String.new(capacity: 2_000)

1_000.times do
  s << 'hello'
end

puts s