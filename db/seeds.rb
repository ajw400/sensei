# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"

User.destroy_all
Lesson.destroy_all
Appointment.destroy_all
Category.destroy_all
Subcategory.destroy_all

puts "Seeding database"

# teachers
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    city: Faker::Address.city,
    address: Faker::Address.street_address,
    zipcode: Faker::Address.zip_code,
    phone: "63959496929",
    password: '123456789',
    # password_confirmation: '123456789',
    company_name: [Faker::Company.name, ""].sample,
    profile_pic: "http://lorempixel.com/400/200",
    bio: Faker::Lorem.paragraph,
    birthdate: Faker::Date.birthday(18, 65),
    languages: "English and Dutch",
    teacher: true
  )
end

# students
20.times.do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone: "63959496929",
    password: '123456789',
    birthdate: Faker::Date.birthday(18, 65)
  )
end

# categories
["music", "dance", "driving", "sports", "yoga"].each do |cat|
  Category.create!(
    name: cat
  )
end

# lessons, subcategories, appointments
User.all.each do |user|
  if user.teacher
    cat = Category.all.sample
    subcat = Subcategory.create!(name: Faker::Lorem.word, category: cat)
    lesson = Lesson.create!(
      description: Faker::Lorem.paragraph,
      hour_price[30..40].sample,
      subcategory: subcat,
      teacher: user,
      level: ["beginner, intermediate, advanced"].sample,
      photo: "http://lorempixel.com/400/200",
      title: Faker::Lorem.sentence
    )
  else
    lesson = Lesson.all.sample
    length = [30, 45, 60].sample
    Appointment.create!(
      lesson: lesson,
      user: user,
      length: length,
      total_price: lesson.hour_price * length / 60,
      status: "unconfirmed"
    )
  end
end

puts "Finished!"


