# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

Content.destroy_all
User.destroy_all
Comparison.destroy_all

5.times do
  Content.create!({format: :movie, title: Faker::Movie.title, description: Faker::Lorem.sentence(word_count: 20)})
end

5.times do
  Content.create!({format: :song, title: Faker::Music::Prince.song, description: Faker::Lorem.sentence(word_count: 20)})
end

10.times do |i|
  User.create!(
    email: "simfaucher@outlook.com#{i.to_s}",
    password: "123456"
  )
  i += 1
end

5.times do
  Comparison.create!({content_a: Content.all.to_a.sample, content_b: Content.all.to_a.sample, user: User.all.to_a.sample, ai_result: Faker::Lorem.sentence(word_count: 30)})
end
