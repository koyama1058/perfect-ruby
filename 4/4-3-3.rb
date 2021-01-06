original = Object.new

puts original.object_id
original.freeze

# dupはfrozeされているかどうかはコピーされない
copy_dup = original.dup
puts copy_dup.object_id
puts copy_dup.frozen?

# cloneは自身がfrozeされているかどうかや特異メソッドの情報も含めてコピーする
copy_clone = original.clone
puts copy_clone.object_id
puts copy_clone.frozen?



value = 'foo'
array = [value]

array_dup = array.dup
array_clone = array.clone

puts value.object_id
puts array_dup[0].object_id
puts array_dup[0]
puts array_clone[0].object_id
puts array_clone[0]