# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :char_vice, :class => 'CharVices' do
    selfcontrol "MyString"
    approach "MyString"
    efficacy "MyString"
    regard "MyString"
    character nil
  end
end
