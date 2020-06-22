require_relative 'crud/Authenticator'

class Student
  include Authenticator # Mixin

  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(params)
    raise ArgumentError, 'Required a hash' unless params.is_a?(Hash)

    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @username = params[:username]
    @password = params[:password]
  end

  def to_s
    "First name: #{@first_name}\nLast name: #{@last_name}\nEmail: #{email}\nUsername: #{username}\nPassword: #{password}"
  end
end

student = Student.new(
  {
    first_name: 'Gurpreet',
    last_name: 'Singh',
    email: 'Email',
    username: 'Username',
    password: 'Password'
  }
)

hashed_password = student.create_hash_digest(student.password)

puts hashed_password
