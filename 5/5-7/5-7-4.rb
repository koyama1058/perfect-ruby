# ファイルはKernel.#openを用いて開くことができる
open('greeting.txt') {|f| puts f.read}

