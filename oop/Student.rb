class Student
  attr_accessor :first_name, :last_name

  def initialize(params)
    raise ArgumentError, 'Required a hash' unless params.is_a?(Hash)

    @first_name = params[:first_name]
    @last_name = params[:last_name]
  end

  def to_s
    puts "First name: #{@first_name}\nLast name: #{@last_name}"
  end
end

puts Student.new({ first_name: "Gurpreet", last_name: "Singh" })
