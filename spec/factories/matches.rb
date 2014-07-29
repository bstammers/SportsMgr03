# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :match do
    team1 "MyString"
    team2 "MyString"
    court "MyString"
    match_time "2014-07-29 16:44:15"
    team1_points 1
    team2_points 1
    team1_sets 1
    team2_sets 1
    mvp "MyString"
    team1_fees "9.99"
    team2_fees "9.99"
    round nil
  end
end
