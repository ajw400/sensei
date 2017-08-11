# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"

Category.destroy_all
Appointment.destroy_all
Lesson.destroy_all
Subcategory.destroy_all
User.destroy_all

puts "Seeding database"

# student
  user = User.new(
    first_name: "Pim",
    last_name: "Hulskorte",
    email: "pimhulskorte@gmail.com",
    phone: "0639594969",
    password: '123456789',
    birthdate: '28-05-1991',
    photo: Rails.root.join("app/assets/images/pim_user2.jpeg")
  )
    user.save!


#catergories
categories_attributes = [
  {name: "Music",
    photo: Rails.root.join("app/assets/images/music.jpg")
    },
  {name: "Dance",
    photo: Rails.root.join("app/assets/images/dance.jpg")
    },
  {name: "Driving",
    photo: Rails.root.join("app/assets/images/driving.jpg")
    },
  {name: "Sports",
    photo: Rails.root.join("app/assets/images/sports.jpg")
    },
  {name: "Yoga",
    photo: Rails.root.join("app/assets/images/yoga.jpg")
    },
  {name: "Languages",
    photo: Rails.root.join("app/assets/images/language.jpg")
}]


#teachers
users_attributes = [
  {
    first_name: "Andrew",
    last_name: "Wright",
    email: "andrewwright@gmail.com",
    city: "Amsterdam",
    address: "Concertgebouwplein 10",
    zipcode: "1071 LN",
    phone: "0639594969",
    password: '123456789',
    # password_confirmation: '123456789',
    company_name: "Wright Piano School",
    bio: "Andrew Wright began the Wright Piano School in the Hague in 2009 as a private teaching practice. Students of Andrew Wright have gone on to be accepted to the most important conservatoires of the Netherlands (Amsterdam, Utrecht, the Hague) and have been successful in national and international competitions. The Wright Piano School places emphasis on inspiration, hard work and achievement. Some students are on their way to becoming professional musicians, while others simply play for fun. The teachers find ways to help all students advance through regular practice. Luckily, the many performances opportunities offered to students provide great motivation, as students are always practicing toward a performance. The sense of accomplishment from each recital, masterclass or exam performance keeps them working hard! All of the associate teachers at the Wright Piano School are highly qualified with a degree in piano and an affinity for teaching.",
    birthdate: "01-10-1985",
    languages: "English and Dutch",
    teacher: true,
    photo: Rails.root.join("app/assets/images/andrew_teacher.jpg")
  },
  {
    first_name: "Martin",
    last_name: "Socorsky",
    email: "martinsocorsky@gmail.com",
    city: "Amsterdam",
    address: "Bachstraat 7",
    zipcode: "1077 GD",
    phone: "0639594969",
    password: '123456789',
    # password_confirmation: '123456789',
    company_name: "Socorsky Piano School",
    bio: "Andrew Wright began the Wright Piano School in the Hague in 2009 as a private teaching practice. Students of Andrew Wright have gone on to be accepted to the most important conservatoires of the Netherlands (Amsterdam, Utrecht, the Hague) and have been successful in national and international competitions. The Wright Piano School places emphasis on inspiration, hard work and achievement. Some students are on their way to becoming professional musicians, while others simply play for fun. The teachers find ways to help all students advance through regular practice. Luckily, the many performances opportunities offered to students provide great motivation, as students are always practicing toward a performance. The sense of accomplishment from each recital, masterclass or exam performance keeps them working hard! All of the associate teachers at the Wright Piano School are highly qualified with a degree in piano and an affinity for teaching.",
    birthdate: "01-10-1985",
    languages: "English and Dutch",
    teacher: true,
    photo: Rails.root.join("app/assets/images/male_1.jpg")
  },
  {
    first_name: "Anton",
    last_name: "Waal",
    email: "antonwaal@gmail.com",
    city: "Nijmegen",
    address: "Keizer Karelplein 2",
    zipcode: "6511 NC",
    phone: "0639594969",
    password: '123456789',
    # password_confirmation: '123456789',
    company_name: "Waal Piano School",
    bio: "Andrew Wright began the Wright Piano School in the Hague in 2009 as a private teaching practice. Students of Andrew Wright have gone on to be accepted to the most important conservatoires of the Netherlands (Amsterdam, Utrecht, the Hague) and have been successful in national and international competitions. The Wright Piano School places emphasis on inspiration, hard work and achievement. Some students are on their way to becoming professional musicians, while others simply play for fun. The teachers find ways to help all students advance through regular practice. Luckily, the many performances opportunities offered to students provide great motivation, as students are always practicing toward a performance. The sense of accomplishment from each recital, masterclass or exam performance keeps them working hard! All of the associate teachers at the Wright Piano School are highly qualified with a degree in piano and an affinity for teaching.",
    birthdate: "01-10-1985",
    languages: "English and Dutch",
    teacher: true,
    photo: Rails.root.join("app/assets/images/male_2.jpg")
  },
  {
    first_name: "Jessica",
    last_name: "Vos",
    email: "jessicavos@gmail.com",
    city: "Den Haag",
    address: "Spuiplein 150",
    zipcode: "2511 DG",
    phone: "0639594969",
    password: '123456789',
    # password_confirmation: '123456789',
    company_name: "Vos Piano School",
    bio: "Andrew Wright began the Wright Piano School in the Hague in 2009 as a private teaching practice. Students of Andrew Wright have gone on to be accepted to the most important conservatoires of the Netherlands (Amsterdam, Utrecht, the Hague) and have been successful in national and international competitions. The Wright Piano School places emphasis on inspiration, hard work and achievement. Some students are on their way to becoming professional musicians, while others simply play for fun. The teachers find ways to help all students advance through regular practice. Luckily, the many performances opportunities offered to students provide great motivation, as students are always practicing toward a performance. The sense of accomplishment from each recital, masterclass or exam performance keeps them working hard! All of the associate teachers at the Wright Piano School are highly qualified with a degree in piano and an affinity for teaching.",
    birthdate: "01-10-1985",
    languages: "English and Dutch",
    teacher: true,
    photo: Rails.root.join("app/assets/images/woman_1.jpg")
  },
  {
    first_name: "Jack",
    last_name: "Deloris",
    email: "jackdeloris@gmail.com",
    city: "Amsterdam",
    address: "Piet Heinkade 1",
    zipcode: "1019 BR",
    phone: "0639594969",
    password: '123456789',
    # password_confirmation: '123456789',
    company_name: "Deloris Piano School",
    bio: "Andrew Wright began the Wright Piano School in the Hague in 2009 as a private teaching practice. Students of Andrew Wright have gone on to be accepted to the most important conservatoires of the Netherlands (Amsterdam, Utrecht, the Hague) and have been successful in national and international competitions. The Wright Piano School places emphasis on inspiration, hard work and achievement. Some students are on their way to becoming professional musicians, while others simply play for fun. The teachers find ways to help all students advance through regular practice. Luckily, the many performances opportunities offered to students provide great motivation, as students are always practicing toward a performance. The sense of accomplishment from each recital, masterclass or exam performance keeps them working hard! All of the associate teachers at the Wright Piano School are highly qualified with a degree in piano and an affinity for teaching.",
    birthdate: "01-10-1985",
    languages: "English and Dutch",
    teacher: true,
    photo: Rails.root.join("app/assets/images/male_3.jpg")
  },
  {
    first_name: "Marion",
    last_name: "Vadita",
    email: "marionvadita@gmail.com",
    city: "Haarlem",
    address: "Lange Begijnestraat 11",
    zipcode: "2011 HH",
    phone: "0639594969",
    password: '123456789',
    # password_confirmation: '123456789',
    company_name: "Vadita Piano School",
    bio: "Andrew Wright began the Wright Piano School in the Hague in 2009 as a private teaching practice. Students of Andrew Wright have gone on to be accepted to the most important conservatoires of the Netherlands (Amsterdam, Utrecht, the Hague) and have been successful in national and international competitions. The Wright Piano School places emphasis on inspiration, hard work and achievement. Some students are on their way to becoming professional musicians, while others simply play for fun. The teachers find ways to help all students advance through regular practice. Luckily, the many performances opportunities offered to students provide great motivation, as students are always practicing toward a performance. The sense of accomplishment from each recital, masterclass or exam performance keeps them working hard! All of the associate teachers at the Wright Piano School are highly qualified with a degree in piano and an affinity for teaching.",
    birthdate: "01-10-1985",
    languages: "English and Dutch",
    teacher: true,
    photo: Rails.root.join("app/assets/images/woman_2.jpg")
  },
  {
    first_name: "Sjuul",
    last_name: "Verbieven",
    email: "sjuulverbieven@gmail.com",
    city: "Amsterdam",
    address: "Oosterdokskade 151",
    zipcode: "1011 DL",
    phone: "0639594969",
    password: '123456789',
    # password_confirmation: '123456789',
    company_name: "Verbieven Piano School",
    bio: "Andrew Wright began the Wright Piano School in the Hague in 2009 as a private teaching practice. Students of Andrew Wright have gone on to be accepted to the most important conservatoires of the Netherlands (Amsterdam, Utrecht, the Hague) and have been successful in national and international competitions. The Wright Piano School places emphasis on inspiration, hard work and achievement. Some students are on their way to becoming professional musicians, while others simply play for fun. The teachers find ways to help all students advance through regular practice. Luckily, the many performances opportunities offered to students provide great motivation, as students are always practicing toward a performance. The sense of accomplishment from each recital, masterclass or exam performance keeps them working hard! All of the associate teachers at the Wright Piano School are highly qualified with a degree in piano and an affinity for teaching.",
    birthdate: "01-10-1985",
    languages: "English and Dutch",
    teacher: true,
    photo: Rails.root.join("app/assets/images/woman_3.jpg")
  },
  {
    first_name: "Barbara",
    last_name: "Kanton",
    email: "barbarakanton@gmail.com",
    city: "Amsterdam",
    address: "Middenweg 67",
    zipcode: "1098 AE",
    phone: "0639594969",
    password: '123456789',
    # password_confirmation: '123456789',
    company_name: "Kanton Piano School",
    bio: "Andrew Wright began the Wright Piano School in the Hague in 2009 as a private teaching practice. Students of Andrew Wright have gone on to be accepted to the most important conservatoires of the Netherlands (Amsterdam, Utrecht, the Hague) and have been successful in national and international competitions. The Wright Piano School places emphasis on inspiration, hard work and achievement. Some students are on their way to becoming professional musicians, while others simply play for fun. The teachers find ways to help all students advance through regular practice. Luckily, the many performances opportunities offered to students provide great motivation, as students are always practicing toward a performance. The sense of accomplishment from each recital, masterclass or exam performance keeps them working hard! All of the associate teachers at the Wright Piano School are highly qualified with a degree in piano and an affinity for teaching.",
    birthdate: "01-10-1985",
    languages: "English and Dutch",
    teacher: true,
    photo: Rails.root.join("app/assets/images/woman_4.jpg")
  },
  {
    first_name: "Daan",
    last_name: "Phillip",
    email: "daanphillip@gmail.com",
    city: "Eindhoven",
    address: "Jan van Lieshoutstraat 3",
    zipcode: "5600 AX",
    phone: "0639594969",
    password: '123456789',
    # password_confirmation: '123456789',
    company_name: "Phillip Piano School",
    bio: "Andrew Wright began the Wright Piano School in the Hague in 2009 as a private teaching practice. Students of Andrew Wright have gone on to be accepted to the most important conservatoires of the Netherlands (Amsterdam, Utrecht, the Hague) and have been successful in national and international competitions. The Wright Piano School places emphasis on inspiration, hard work and achievement. Some students are on their way to becoming professional musicians, while others simply play for fun. The teachers find ways to help all students advance through regular practice. Luckily, the many performances opportunities offered to students provide great motivation, as students are always practicing toward a performance. The sense of accomplishment from each recital, masterclass or exam performance keeps them working hard! All of the associate teachers at the Wright Piano School are highly qualified with a degree in piano and an affinity for teaching.",
    birthdate: "01-10-1985",
    languages: "English and Dutch",
    teacher: true,
    photo: Rails.root.join("app/assets/images/male_4.jpg")
}]


#titles
titles = ["Learn playing Piano fast", "Master the Piano", "Love the Piano in a few lessons", "Discover the Piano", " Dive into playing Piano", "Improve your Piano skills", "Piano skill learn it fast", "Enhance your talent in playing Piano", "Want to learn Piano?"]
counter = 0


#category -> subcategory -> user -> lessons + title -> appointments
categories_attributes.each do |category_attributes|
  Category.create!(category_attributes)
end

Category.all.each do |cat|
    #subcategory
  ["Piano", "Violin", "Flute", "Drums", "Tuba"].each do |subcat|
    sub = Subcategory.new(name: subcat)
    sub.category = cat
    sub.save!
  end
end

users_attributes.each do |user_attribute|
    #user
  user = User.create!(user_attribute)
    #lessons

      lesson = Lesson.create!({
        description: "Want to learn playing the piano fast? You have found the right teacher! I have taught multiple students and all of them could play multiple pieces after just one lesson. Together we will explore your basic skill in playing the piano and then we decide which songs are suitable for you.",
        hour_price: [90, 85, 80, 75, 70, 65].sample,
        user: user,
        subcategory: Category.find_by_name("Music").subcategories.sample,
        level: ["Beginner", "Intermediate", "Advanced"].sample,
    #title
        title: titles[counter]
      })
      counter += 1
    #appointments
      # (1..3).to_a.sample.times do

      #   appt = Appointment.new({
      #     lesson: lesson,
      #     user: user,
      #     length: [20, 30, 45, 60, 90].sample,
      #     status: %w[unconfirmed, confirmed, canceled, denied].sample,
      #     date_time: "2017-10-11 13:24:00".to_datetime
      #    })
      #   appt.total_price = lesson.hour_price * appt.length / 60
      #   appt.save!
      # end
end

puts "Finished!"


