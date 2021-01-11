# freezeのついた文字列リテラルの処理が最適化され、同じ内容なら、同じオブジェクトを参照する様になった。
same = [ 'same'.freeze, "same".freeze, %(same).freeze ]
# 以下では全て同じIDが表示される
p same.map(&:object_id)


# ファイルの1行目かshebangの直後に # frozen_string_literal: trueというコメントをかくと、そのファイル内の文字列リテラルはfroozeされた文字列を返す

