# モジュールはインスタンスを生成できず、承継もできないという特徴がある


# メソッド名の前にself.を付けて定義したメソッドはモジュールの特異メソッド
module Sweet
  def self.lot
    # Array#sampleは要素をランダムに返す
    %w(brownie apple-pie bavarois pudding).sample
  end
end

puts Sweet.lot
puts Sweet.lot


# モジュールを名前空間として使う例
module Sweet
  module Chocolate
  end

  class Brownie
  end
end

puts Sweet::Chocolate
puts Sweet::Brownie
