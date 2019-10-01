FactoryBot.define do
  factory :solution do
    problem
    user
    code { "input" }
    language { :ruby }
  end
end
