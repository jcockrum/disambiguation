# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :character do
    name "MyString"
    description "MyText"
    selfcontrol "MyString"
    approach "MyString"
    efficacy "MyString"
    regard "MyString"
    universe nil
  end
end
