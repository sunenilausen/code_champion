FactoryBot.define do
  factory :eval_server do
    ip_address { "localhost" }
    port { "4567" }
    language { 0 }
    status { 0 }
    response_time { 0 }
    last_response { "2019-09-28 19:48:57" }
  end
end
