# 0から1の数字を含んでいればマッチする記述
p /[0-9]/ === 'ruby'
p /[0-9]/ === 'ruby5'

# =~は引数の文字列が正規表現にマッチした位置を返す。マッチしない場合にはnilを返す。nilは偽として扱われるため述語メソッドとして利用される
p /[0-9]/ =~ 'ruby'
p /[0-9]/ =~ 'ruby5'


# ===はパターンを指定する際に正規表現と文字列どちらも指定できるため柔軟な比較を行いたい場合に使う
def alice?(pattern)
  pattern === ('alice')
end

p alice?(/Alice/i)
p alice?('alice')



str = 'ruby5'
# matchはマッチがなければnilを返し、マッチした場合にはMatchDataオブジェクトを返す
if matched = /[0-9]/.match(str)
  p matched
end
