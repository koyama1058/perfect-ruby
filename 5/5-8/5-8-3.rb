# 存在しないディレクトリ名
dir = 'foo'
# exist?でディレクトリが存在するかどうかを調べている
puts Dir.exist?(dir)

# ディレクトリの作成
# Dir.mkdir(dir)
# 作成したため、存在し、trueが返る
puts Dir.exist?(dir)


# empty?は指定されたディレクトリが空かどうかを調べる
dir_1 = 'bar'
dir_2 = File.join(dir_1, 'baz')
# Dir.mkdir(dir_1)
puts Dir.empty?(dir_1)
# Dir.mkdir(dir_2)
puts Dir.empty?(dir_1)