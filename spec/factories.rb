FactoryBot.define do

  factory :country do
    name "Belarus"
  end

  factory :city do
    country_id Country.where(name: "Belarus").first.id
    name "Minsk"
  end

  factory :user do
    first_name "Joe"
    last_name "Mitchel"
    email "joe@gmail.com"
    country Country.where(name: "Belarus").first
    city City.where(name: "Minsk").first
  end


end
