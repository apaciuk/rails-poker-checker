FactoryBot.define do
  factory :announcement do
    published_at { "2023-01-18 19:05:17" }
    announcement_type { "MyString" }
    name { "MyString" }
    description { "MyText" }
  end
end
