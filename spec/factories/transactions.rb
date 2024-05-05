# spec/factories/transctions.rb
FactoryBot.define do
  factory :transaction do
    trait :created do
      status :created
    end

    trait :deleted do
      status :deleted
    end

    trait :in_the_past do
      published_at { 2.days.ago }
    end
  end
end
