# 要素を特定の条件に基づいてグルーピングして、グループ毎に処理を行う際にはgroup_byを使う。
# group_byはブロックの戻り値をキーとして新しいハッシュを生成する。
array = ['1', 2.0, 3.0, [4]]
p array.group_by {|val| val.class}


# partitionはブロックの戻り値を真偽値として使い、レシーバーを2つのグループに分けた新しい配列を返す。以下は偶数と奇数の配列を得るための記述
array = [1,2,3,4,5]
p array.partition {|n| n.even? }


# オブジェクトの最大値、最小ちを得るためのメソッド
range = (1..10)
puts range.max
puts range.min
p range.minmax


# 文字列の配列で最も長いものや最も短いものを得るための記述は以下の通りになる
people = %w(Bob Alice Charlie)
puts people.min_by {|s| s.length }
puts people.max_by {|s| s.length }
p people.minmax_by {|s| s.length }


# 要素でソートする
p people.sort
# 要素の長さでソートする
p people.sort {|a, b| a.length <=> b.length }
p people.sort_by {|name| name.length }