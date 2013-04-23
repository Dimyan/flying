FactoryGirl.define do
  factory :user do
    name 'Test User'
    email 'example@example.com'
    password 'new_pass'
    password_confirmation 'new_pass'
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
  end
end