# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# puts 'Cleaning up database...'
# Medication.destroy_all
# Interval.destroy_all
# User.destroy_all
# Frequency.destroy_all



# puts 'Creating frequencies and intervals...'
# Frequency.create(name: 'Once per day', description: 'One time per day', value: 1)
# Frequency.create(name: 'Twice per day', description: 'Two times per day', value: 2)
# Frequency.create(name: 'Thrice per day', description: 'Three times per day', value: 3)

Interval.create(name: '3 hours', value: 3)
Interval.create(name: '4 hours', value: 4)
Interval.create(name: '5 hours', value: 5)

# puts 'Finished creating frequencies and intervals!'

# user = User.create!(
#         name:  "Example User",
#          email: "example@railstutorial.org",
#          password: '123456',
#          photo: 'image_tag "https://kitt.lewagon.com/placeholder/users/arthur-littm"',
#           phone_number: 1234567890,
#           family_phone_number: 1234567890,

# )

# user = User.create!(
#         name:  "Example User",
#           email: "test@test.test",
#           password: '123456',
#           phone_number: 1234567890,
#           family_phone_number: 1234567890,
# )



# def random_date(start_date, end_date)
#   Faker::Date.between(from: start_date, to: end_date)
# end


# medication_types = ['Tablets', 'Capsules', 'Drops', 'Inhalers', 'Injections', 'Liquid', 'Topical medicines', 'Suppositories']

# frequencies = ['Once a day', 'Twice a day', 'Three times a day', 'Four times a day', 'Every 6 hours', 'Every 8 hours', 'Every 12 hours']
# # Assuming you have a User instance (replace with your logic to get a User)


# 2.times do
#   Medication.create!(
#     user: user,
#     name: Faker::Lorem.word,
#     instruction: Faker::Lorem.sentence,
#     quantity: rand(1..100),
#     med_type: medication_types.sample,
#     start_date: random_date(Date.today - 365, Date.today),
#     end_date: random_date(Date.today, Date.today + 365),
#     frequency: Faker::Number.between(from: 1, to: 4),
#     interval: Interval.create!(value: Faker::Number.between(from: 1, to: 24)),
#     start_time: Faker::Time.forward(days: 1)
#   )
# end
