# ディレクトリを開いて一覧を取得する
puts Dir.open '/Users' do |dir|
 dir.entries
end

dir = Dir.open('/')

puts dir.path