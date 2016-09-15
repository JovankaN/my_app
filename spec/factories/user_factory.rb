
FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password "abcdef"
    first_name "Jovanka"
    last_name "Nikolovski"
    admin false
  end

  factory :admin, class: User do
    email
    password "678901"
    admin true
    first_name "Admin"
    last_name "User"
  end

end