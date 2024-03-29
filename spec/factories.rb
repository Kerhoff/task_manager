FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Person #{n}"}
    sequence(:email) { |n| "person_#{n}@test.com"}
    password 'test_test'
    password_confirmation 'test_test'
    
    factory :admin do
      admin true
    end
  end
end
