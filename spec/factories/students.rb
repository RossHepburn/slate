# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student, class: 'User' do
    name "Alex Peattie"
    email "alex@example.com"
  end
end
