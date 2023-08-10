FactoryBot.define do
  factory :mountain do
    
    

    after(:build) do |mountain|
      mountain.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
