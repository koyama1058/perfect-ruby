pattern = /(\w+)/

p pattern.match('ruby')[1]
p pattern.match('ruby5')[1]


pattern = /(\w+)[0-9]/

p pattern.match('ruby5')[1]


# (?>)で正規表現を囲むとそこにマッチした部分でバックトラックを抑止できる
pattern = /(?>\w+)[0-9]/
p pattern === 'ruby5'