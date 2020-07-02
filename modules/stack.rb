require_relative 'Stacklike'

class Stack
  include Stacklike

  def initialize
    add_to_stack(123)
    puts take_from_stack
  end
end

Stack.new
