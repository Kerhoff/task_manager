FactoryGirl.define do
  factory :user do
    name                  'TestUser'
    email                 'user@test.com'
    password              'test_test'
    password_confirmation 'test_test'
  end
end
