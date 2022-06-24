FactoryBot.define do
  factory :teacher do
    year { rand(1910..2022) }
    sequence(:name) { |n| "Teacher #{n}" }
    sequence(:school) { |n| "School #{n}" }
  end
end
