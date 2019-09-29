FactoryBot.define do
  factory :test_case_solution do
    solution
    test_case
    status { 1 }
  end
end
