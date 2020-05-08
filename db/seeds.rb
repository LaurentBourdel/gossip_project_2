
require 'faker'

City.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all
User.destroy_all
Gossip.destroy_all

10.times do

  # seed for cities
  City.create!(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
  # seed for users
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence,
    email: Faker::Internet.email,
    age: Faker::Number.between(from:7, to:77),
    city_id: City.all.sample.id
  )
end

20.times do

  # seed for private messages
  PrivateMessage.create!(
    content: Faker::Lorem.paragraph,
    #recipient: User.all.sample.id,
    #sender: User.all.sample.id
  )

  # seed for gossips
  Gossip.create!(
    title: Faker::Lorem.sentence(word_count: 5),
    content: Faker::Lorem.paragraph(sentence_count: 2),
    user_id: User.all.sample.id
  )
end

10.times do
  # seed for tags
  Tag.create!(
    title: Faker::Lorem.word
  )
end