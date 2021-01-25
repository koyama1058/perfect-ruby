# ブロックを渡してメソッドを定義する方法
klass_object = nil

ThirdClass = Class.new do |klass|
  klass_object = klass
  klass == self

  def hello
    :hello
  end
end

klass_object == ThirdClass
p third_class_instance = ThirdClass.new
p third_class_instance.hello