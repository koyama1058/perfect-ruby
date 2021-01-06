class Parent
  # クラス変数は@@から始まる英数字または_で表現する。そのクラスとサブクラスのクラス定義の中、クラスメソッド、インスタンスメソッドで共有できる
  @@val = 'foo'

  def self.say
    # クラスメソッドから参照
    puts @@val
  end
end

class Child < Parent
  def say 
    # サブクラスのインスタンスメソッドから参照
    puts @@val
  end
end

Parent.say
Child.say
Child.new.say
