FactoryBot.define do
  factory :user do
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    name                  {'太郎'}
    profile               {'ベテラン登山家'}
    prefecture            {'熊本県'}
    history               {'10年'}
  end
end