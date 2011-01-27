Factory.define :user do |user|
  user.first_name "John"
  user.last_name "Doe"
  user.password "123456"
  user.password_confirmation "123456"
  user.email "johndoe@email.com"
end
