# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying all users................"
User.destroy_all

puts "Creating coders........"

file = URI.open("https://media-exp1.licdn.com/dms/image/D4E35AQHvbJhPEMWonQ/profile-framedphoto-shrink_400_400/0/1669122049418?e=1670328000&v=beta&t=d_Yrhytv3qzCDSSKbffENX1snbSepM-znQh2EhvKXPI")
coder = User.new(first_name: "Marie",
                  last_name: "Altieri",
                  username: "marie-altieri",
                  password: "123456",
                  email: "marie.altieri@hotmail.fr",
                  description: "La pratique de l’équitation à haut niveau et les études de marketing me permettent de développer des compétences complémentaires qui me seront très utiles dans la vie professionnelle. Le perfectionnisme, la persévérance, la volonté, la remise en question, la créativité, le travail d’équipe et l’envie d’apprendre et de toujours se surpasser. Le respect des autres et de l’environnement fait partie intégrante de ma personnalité.",
                  experience: "Full Stack Developper, thanks to Le Wagon",
                  language: "HTML, CSS, JavaScript",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 1)
coder.save

file = URI.open("https://media-exp1.licdn.com/dms/image/C4D03AQEVlDL5vq_uiQ/profile-displayphoto-shrink_400_400/0/1574771820506?e=1675296000&v=beta&t=R-uZByHzgnU9t0hpYwOBZXVs6enpqSMpzgzFJaOryY0")
coder = User.new(first_name: "Laura",
                  last_name: "Birkiye",
                  username: "laura_birkiye",
                  password: "123456",
                  email: "laura.birkiye@gmail.com",
                  description: "La pratique de l’équitation à haut niveau et les études de marketing me permettent de développer des compétences complémentaires qui me seront très utiles dans la vie professionnelle. Le perfectionnisme, la persévérance, la volonté, la remise en question, la créativité, le travail d’équipe et l’envie d’apprendre et de toujours se surpasser. Le respect des autres et de l’environnement fait partie intégrante de ma personnalité.",
                  experience: "Full Stack Developper, thanks to Le Wagon",
                  language: "HTML, CSS, JavaScript",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 1)
coder.save

file = URI.open("https://media-exp1.licdn.com/dms/image/D4E35AQHYpR4e66Rjew/profile-framedphoto-shrink_400_400/0/1669122026532?e=1670328000&v=beta&t=w2qbV26j0kBX3ogFOqiX1djrSmaAJRCzZ3sGkRrl0Wk")
coder = User.new(first_name: "Victor",
                  last_name: "de Spirlet",
                  username: "vic_dsp",
                  password: "123456",
                  email: "vic_dsp@gmail.com",
                  description: "Looking for new opportunities",
                  experience: "Front-End Developper, thanks to Le Wagon",
                  language: "HTML, CSS, JavaScript",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 1)
coder.save

file = URI.open("https://avatars.githubusercontent.com/u/113897359?v=4")
coder = User.new(first_name: "Daphné",
                  last_name: "Lefevre",
                  username: "daph_de_waterloo",
                  password: "123456",
                  email: "daphlefevre@gmail.com",
                  description: "Hello, my name is Daphné. I come from Waterloo, meaning that I've never actually visited Brussels. What is the Sablon? Happy rrrrrhanouka !!!!",
                  experience: "Back-End Developper, thanks to Le Wagon and Amsterdam",
                  language: "Ruby on Rails, C++",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 2)
coder.save

file = URI.open("https://avatars.githubusercontent.com/u/70776288?v=4")
coder = User.new(first_name: "Pedro",
                  last_name: "Pan",
                  username: "pedropan",
                  password: "123456",
                  email: "pedropan@hotmail.fr",
                  description: "Hi folks, I'm Pedro. Pretty sure that I am the best coder around Brussels. Contact me if you need any help developing your nonesense.",
                  experience: "Back-End Developper, NOT Front-End",
                  language: "Ruby on Rails, JavaScript, SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 60)
coder.save

file = URI.open("https://avatars.githubusercontent.com/u/70776288?v=4")
offer = Project.new(
  description: "",
                    status: "",
                    deadline:)
