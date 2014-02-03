FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  sequence :password do |n|
    "1234567#{n}"
  end

  factory :user do
    email
    password
  end

  factory :state do
    name 'California'
    abbr 'CA'
    visited true
  end

  factory :experience do
    text 'I set a course for winds of fortune'
    location 'San Francsico, CA'
    taken_at Time.now
    state
  end
end
