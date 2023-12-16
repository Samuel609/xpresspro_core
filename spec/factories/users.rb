FactoryBot.define do
  factory :user do
    first_name { Faker::Name.name }
    last_name { Faker::Name.name }
    email { Faker::Internet.email }
    phone_number { 1 }
    password { 'password' }
    password_confirmation { 'password' }

  end
end
