# newでクラスを作成するにはClass.newで作成されるClassオブジェクトを定数に代入する
FirstClass = Class.new


first_class_instance = FirstClass.new
puts first_class_instance.class.name