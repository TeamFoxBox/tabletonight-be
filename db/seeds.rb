user_attributes = [
  {
    name: 'John Doe'
    email: 'johndoe@example.com'
    password: 'password'
  }
]

user_attributes.each do |attributes|
  User.create(attributes)
end
