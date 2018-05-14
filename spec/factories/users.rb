FactoryBot.define do
  factory :user do
    first_name "Jacko"
    last_name "Jack"
    email "don@dons.com"
    password "yoloyolo"

    factory :user_without_first_name do
      first_name ''
      email "don@dona.com"
    end

    factory :user_without_last_name do
      last_name ''
      email "don@donb.com"
    end

    factory :user_with_blank do
      first_name 'J a c k o'
      email "don@donc.com"
    end

  end
end
