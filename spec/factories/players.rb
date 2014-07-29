# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    first_name "MyString"
    last_name "MyString"
    username "MyString"
    phone "MyString"
    email "MyString"
    password_digest "MyString"
    avatar "MyString"
    admin_flag false
    manager_flag false
    team nil
    competition nil
  end
end
