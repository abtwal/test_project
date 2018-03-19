FactoryBot.define do

  factory :country do
    name "Belarus"
  end

  factory :city do
    country
    name "Minsk"
  end

  factory :user do
    first_name "Joe"
    last_name "Mitchel"
    email "joe@gmail.com"
    country
    city
  end


end
