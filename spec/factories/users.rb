FactoryBot.define do
  factory :user do
    nickname { Faker::Name.name }
    email { Faker::Internet.free_email }
    password { 'aaaa0000' }
    password_confirmation { password }
    sex_id { '男性' }
  end
end