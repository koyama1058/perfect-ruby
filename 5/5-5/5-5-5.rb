# Enumerator::Lazyは繰り返し処理の実行を遅延させることができる。大きな配列や無限の要素を持つオブジェクトの集まりを手軽に扱える
# lazyを呼び出すとlazyオブジェクトが得られるがその時点では処理は実行されない。
# forceが呼び出されて初めて、必要な回数だけ処理が実行され値が得られる。
(0..Float::INFINITY).lazy.map {|n|
  puts "map: #{n}"
  n.succ
}.select {|n|
  puts "select: #{n}"
  n.odd?
}.take(3).force