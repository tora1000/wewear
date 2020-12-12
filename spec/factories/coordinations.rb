FactoryBot.define do
  factory :coordination do
    title { "コートコーディネート" }
    description { "コートコーディネート" }
    recommended_point { "コート" }
    favorite_item { "アウター" }
    use { "デート" }

    association :user

    after(:build) do |coordination|
      coordination.image.attach(io: File.open('public/images/セットアップ.png'), filename: 'test_image.png')
    end
  end
end