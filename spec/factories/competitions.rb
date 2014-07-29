# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :competition do
    name "MyString"
    manager "MyString"
    manager_phone "MyString"
    manager_email "MyString"
    location "MyString"
    points_flag false
    sets_flag false
    mvp_flag false
  end
end
