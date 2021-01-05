# キーワード引数とは仮引数の名前によって引数を指定する方法
def keywords(alice:, bob:)
  {alice: alice, bob: bob}
end

p keywords(alice: 'アリス', bob: 'ボブ')
# 存在しないキーワードの場合にはエラーが発生する
# keywords(chalie: 'チャーリー')



# 上記内容を引数としてハッシュを受け取る方法で記述する
def keywords(hash = {})
  puts hash
end

keywords(alice: 'アリス', bob: 'ボブ')



# 頭に**を付けた仮引数は仮引数にないキーワード引数を一つのハッシュにまとめて受け取る
def keywords_with_options(alice:, bob:, **others)
  {alice: alice, bob: bob, others: others}
end

puts keywords_with_options alice:'アリス', bob: 'ボブ', charlie: 'チャーリー', dave: 'デイヴ'

# 順番を変えてもキーワード引数は名前で指定するため出力は変わらない
puts keywords_with_options  charlie: 'チャーリー', alice:'アリス', bob: 'ボブ'

# **のついた仮引数はデフォルトで空のハッシュが入る
puts keywords_with_options alice:'アリス', bob: 'ボブ'