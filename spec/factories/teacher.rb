FactoryBot.define do
  factory :teacher do
    year { rand((Time.now - 50.years)..Time.now) }
    name { Faker::Name.name }
    school { Faker::University.name }
  end
end
