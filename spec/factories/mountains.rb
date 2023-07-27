FactoryBot.define do
  factory :mountain do
    :mountain_name {Faker::Team.name}
    :level         { Faker::Lorem.sentence }
    :point         { Faker::Lorem.sentence }
    :image
  end
end
