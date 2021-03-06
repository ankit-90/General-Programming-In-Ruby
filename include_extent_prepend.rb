=begin
Include is easy to understand, it adds the module’s methods as instance methods
to it’s including class. 
=end

module FooBar
  def say
    puts "2 - Module"
  end
end

class Foo
  include FooBar

  def say
    puts "1 - Implementing Class"
    super
  end
end

Foo.new.say # =>
            # 1 - Implementing Class
            # 2 - Module


=begin
Extend doing the same thing as include do, but instead adding the methods as class methods. 
=end

module After
 def module_method
    puts "Module Method invoked"
  end
end

class Example
end

ex = Example.new
ex.extend After
ex.module_method
# => Module Method invoked


=begin
Prepend is similar to include, but instead inserts the module before the including 
class in the inheritance chain.
=end

module FooBar
  def say
    puts "2 - Module"
    super
  end
end

class Foo
  prepend FooBar

  def say
    puts "1 - Implementing Class"
  end
end

Foo.new.say # =>
            # 2 - Module
            # 1 - Implementing Class



=begin
Super: Super is used for overridden method call by the overriding method. using super will 
call the same method, but as defined in the superclass and give you the result.
=end


class Animal
  def move 
    "I can move"
  end
end

class Bird
  def move
    super + "by flying"
  end
end

puts Animal.new.move
# => I can move
puts Bird.new.move
# => I can move by flying

