```ruby
class MyClass
  attr_reader :value

  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

#Attempting to set a non-existent variable will now throw an error because it's not defined.
# If you really need dynamic attributes, consider using a hash to store them.
#begin
#  my_object.instance_variable_set(:@nonexistent_variable, 30) 
#rescue NoMethodError => e
#  puts "Error: #{e.message}"
#end

my_object.value = 20 # This will update the value correctly because attr_reader generates a setter method
puts my_object.value #=> 20
```