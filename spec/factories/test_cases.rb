FactoryBot.define do
  factory :test_case do
    problem
    input { "[1,3]" }
    output { "4" }
  end
end
