# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :team do
    name "MyString"
    captain "MyString"
    secondary_contact "MyString"
    games_played 1
    games_won 1
    games_lost 1
    games_drawn 1
    sets_won 1
    sets_lost 1
    sets_tied 1
    points_for 1
    point_against 1
    points_percent "9.99"
    sets_for 1
    sets_against 1
    sets_percent "9.99"
    competition_points 1
    division nil
  end
end
