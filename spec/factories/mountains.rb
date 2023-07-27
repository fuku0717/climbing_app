FactoryBot.define do
  factory :mountain do
    :mountain_name {Faker::Team.name}
    :level         { Faker::Lorem.sentence }
    :point         { Faker::Lorem.sentence }
    :image

    after(:build) do |mountain|
      mountain.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
