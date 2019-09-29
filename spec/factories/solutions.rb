FactoryBot.define do
  factory :solution do
    problem
    user
    code { "MyText" }
  end
end
