module Greetable
  def greet_to(name)
    puts "Helo, #{name}. I'm a #{self.class}"
  end
end

o = Object.new
o.extend Greetable
o.greet_to 'World'


class Alice
  extend Greetable
end

Alice.greet_to 'World'