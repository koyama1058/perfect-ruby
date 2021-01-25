FirstClass = Class.new


first_class_instance = FirstClass.new
puts first_class_instance.class.name

# 別のクラスを継承するためにには引数に親クラスを渡す。
SecoundClsss = Class.new(FirstClass)
SecoundClsss.superclass