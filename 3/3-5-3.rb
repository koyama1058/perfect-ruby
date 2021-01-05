people = %w(alice bob carol)

# 0番目のalice
person_0th = people[0]
# 9番目がないためnil
person_9th = people[9]

# メソッドの呼び出しに.ではなく&.をつかうことでレシーバーがnilだった場合には何もせずにnilを返す。
p person_0th&.capitalize
p person_0th.capitalize

# nilを返す
p person_9th&.capitalize
# この呼び出しの場合にはエラーが出力されてしまう。
p person_9th.capitalize