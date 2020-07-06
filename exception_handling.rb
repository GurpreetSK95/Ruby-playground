class ExceptionHandling
  def unhandled_divide_by_zero(item_to_be_divided)
    item_to_be_divided / 0
  end

  def handled_divide_by_zero(item_to_be_divided)
    item_to_be_divided / 0
  rescue ZeroDivisionError
    puts 'Division by zero is not allowed'
  end

  def handled_divide_by_zero_and_more(item_to_be_divided)
    puts 'I\'m just a placeholder'
    begin
      item_to_be_divided / 0
    rescue ZeroDivisionError
      puts 'Division by zero is not allowed'
      return # If not returned, the following puts will print.
    end
    puts 'I\'m just a later placeholder which won\'t be execcuted as rescue returns'
  end

  def capture_with_message(item_to_be_divided)
    item_to_be_divided / 0
  rescue ZeroDivisionError => e
    puts "Error message #{e.message}"
    puts "Error backtrace #{e.backtrace}"
  end

  def rescue_me(item_to_be_divided)
    item_to_be_divided / 0
  rescue
    puts 'Boom!'
  ensure
    puts 'After Boom!'
  end
end

obj = ExceptionHandling.new
# obj.unhandled_divide_by_zero(450) # Raises ZeroDivisionError
obj.handled_divide_by_zero(450)
obj.handled_divide_by_zero_and_more(54)
obj.capture_with_message(54)
obj.rescue_me(312)
