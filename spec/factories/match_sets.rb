# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :match_set do
    team1_points 1
    team2_points 1
    winner "MyString"
    match nil
  end
end
