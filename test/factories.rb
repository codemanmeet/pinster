require 'factory_girl'

FactoryGirl.define do
  factory :user do
    name "John Dover"
    email  "blah@p.com"
    password "test1234"
    password_confirmation "test1234"
  end
end

def create_user
	return create(:user)
end


