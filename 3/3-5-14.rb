# aliasは既存のメソッドに別名をつけることができる。以下はputsメソッドに別名を付けている
alias greet puts

greet 'hi'

# aliasをした後にundefで定義を取消した場合でも別名のメソッドは取り消されない
undef puts 

greet 'ho'