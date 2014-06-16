include ActionDispatch::TestProcess
require 'factory_girl'


FactoryGirl.define do
    factory :pin do |p1|
  # Given a pin model with has_attached_file :image
    p1.image {fixture_file_upload("#{Rails.root}/public/images/manmeet_pic.jpg",'image/jpg')}
    p1.description "that's me"
    user
  end

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




