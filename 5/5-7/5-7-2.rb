# 以下はファイルを排他ロックし、ファイル内の数値をインクリメントした値で上書きする
File.open 'counter', File::RDWR | File::CREAT do |f|
  f.flock File::LOCK_EX

  count = f.read.to_i
  f.rewind

  f.write count.succ

end


# ファイルに関する情報の取得
File.open 'foo' do |f|
  # atimeは最後にアクセスした日時を取得する
  p f.atime
  # ctimeは最後に状態を変更した日時を取得する
  p f.ctime
  # mtimeは最後に更新した日時を取得する
  p f.mtime
  # sizeはファイルサイズを取得する
  p f.size
end


# statオブジェクトからはファイルの詳細な情報を得ることができる
stat = File.open('foo', &:stat)
# ファイルタイプ
p stat.ftype
# ファイルか否か
p stat.file?
# ディレクトリか否か
p stat.directory?
# ソフトリンクか否か
p stat.symlink?
p stat.pipe?
p stat.socket?

p stat.writable?
p stat.readable?
p stat.executable?

p stat.owned?
# ファイルオーナーの情報
p stat.gid
p stat.uid
# inode番号
p stat.ino
# デバイス番号
p stat.dev