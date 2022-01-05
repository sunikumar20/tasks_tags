FactoryGirl.define do
  factory :task do
    title    { Faker::Name.name }
  end
end