# クラスオブジェクトが持つインスタンス変数はクラスインスタンス変数と呼ばれる
# 定義方法はselfがクラスを指すコンテキストでインスタンス変数を定義する
class Klass
  @class_instance_val = :class_instance_val
  @@class_val = :class_val

  def instance_method
    # クラスインスタンス変数へのアクセスとは見做されずインスタンス変数へのアクセスとされる
    p @class_instance_val
      # =>nil
    # クラス変数へはアクセス可能
    p @@class_val
      # => :class_val
  end


  def self.class_instance_val
    @class_instance_val
  end
end
