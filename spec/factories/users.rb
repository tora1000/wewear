FactoryBot.define do
  factory :user do
    nickname { Faker::Name.name }
    email { Faker::Internet.free_email }
    password { 'aaaa0000' }
    password_confirmation { password }
    sex_id { 1 }
  end
end