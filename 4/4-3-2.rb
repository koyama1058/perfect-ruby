o = Object.new

# freezeを呼び出すとレシーバーへの破壊的無操作（オブジェクトの状態を変更する操作）を禁止する。
o.freeze
# frozen?でfreezeされているかは確認できる。一度freezeされたオブジェクトは二度と変更することはできない。
puts o.frozen?

o.extend Enumerable