# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying all Reviews"
Review.destroy_all
puts "Destroying all Messages"
Message.destroy_all
puts "Destroying all projects"
Project.destroy_all
puts "Destroying all users................"
User.destroy_all
puts "Creating coders........"
puts "Creating companies....."

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t39.30808-6/274588846_10158911071134065_5127209258883963504_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=cyMiryUW4j8AX-5UEsG&_nc_ht=scontent-bru2-1.xx&oh=00_AfDKpbHDMXctu0Mxfknq2QW2urPm7GwoIlyvdtw5XiN0SQ&oe=639300F1")
coder = User.new(first_name: "Marie",
                  last_name: "Altieri",
                  username: "marie-altieri",
                  password: "123456",
                  email: "marie.altieri@hotmail.fr",
                  description: "
                  Hi everyone, I'm Marie!
                  Coming from a hospitality background with more than four years of experience, I want to learn a new skill to add to my current experience and background, in hopes to create my own business in the future.
                  I look forward to this new adventure ! CEO of Code It. I founded the company to help people and give orders to my team.",
                  experience: "CEO of Code It",
                  language: "HTML, CSS, JavaScript, Python",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 1)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Marie's chat")

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t1.18169-9/10559666_428710023937626_2814290272899354317_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=19026a&_nc_ohc=FIZMlphJej4AX-8Y-sG&_nc_ht=scontent-bru2-1.xx&oh=00_AfCg6PX1YxDx962DTM8ZW0qZFYInup1MHCgf80CIhy5Ghw&oe=63B57966")
coder = User.new(first_name: "Laura",
                  last_name: "Birkiye",
                  username: "laura_birkiye",
                  password: "123456",
                  email: "laura.birkiye@gmail.com",
                  description: "La pratique de l’équitation à haut niveau et les études de marketing me permettent de développer des compétences complémentaires qui me seront très utiles dans la vie professionnelle. Le perfectionnisme, la persévérance, la volonté, la remise en question, la créativité, le travail d’équipe et l’envie d’apprendre et de toujours se surpasser. Le respect des autres et de l’environnement fait partie intégrante de ma personnalité.",
                  experience: "Full Stack Developper, 9+ years of front-end experience",
                  language: "HTML, CSS, JavaScript",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 1)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Laura's chat")

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t31.18172-8/22254862_10159533623285066_5753923098360108724_o.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_ohc=as_4sii4uisAX-vX7PI&_nc_ht=scontent-bru2-1.xx&oh=00_AfD51hjKAgtu-WrCcYfBBoKkAT8qdaeGdSq3MsRiZoAhXQ&oe=63B56040")
coder = User.new(first_name: "Victor",
                  last_name: "de Spirlet",
                  username: "vic_dsp",
                  password: "123456",
                  email: "vic_dsp@gmail.com",
                  description: "Looking for new opportunities, because I need to money to feed my dog",
                  experience: "Front-End Developper, thanks to Le Wagon",
                  language: "HTML, CSS, JavaScript",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 1)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Victor's chat")

file = URI.open("https://avatars.githubusercontent.com/u/113897359?v=4")
coder = User.new(first_name: "Daphné",
                  last_name: "Lefevre",
                  username: "daph_de_waterloo",
                  password: "123456",
                  email: "daphlefevre@gmail.com",
                  description: "Hello, my name is Daphné. I come from Waterloo, meaning that I've never actually visited Brussels. What is the Sablon? Happy rrrrrhanouka !!!!",
                  experience: "Back-End Developper",
                  language: "Ruby on Rails, C++",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 2)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Daphne's chat")

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t1.6435-9/37974642_2208097952759146_750759686340345856_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=CrProceVQYMAX_nVVYj&_nc_ht=scontent-bru2-1.xx&oh=00_AfDD-3kM_vZXixgOZWfZA-Y7aLmZ0M3If6pcqH-wkcOpRg&oe=63B52ACD")
coder = User.new(first_name: "Benjamin",
                  last_name: "Boulle",
                  username: "benboulle",
                  password: "123456",
                  email: "benjamin.boulle@gmail.com",
                  description: "Hello everyome, I am Benjamin! I've been a fan of coding ever since my early age and code everyday as a hobby. I will nearly join the army but I am very happy to help you with any project you have. I studied civil engineering for 5 years, my options were biomedical and mechanic but I wanted to code more, this is why I started Le Wagon. After Le Wagon I want to work in a team of few people to develop websites and application.",
                  experience: "Teacher Assistant @Le Wagon",
                  language: "Ruby on Rails, SQL, Python",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 2)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Benjamin's chat")

file = URI.open("https://avatars.githubusercontent.com/u/70776288?v=4")
coder = User.new(first_name: "Pedro",
                  last_name: "Pan",
                  username: "pedropan",
                  password: "123456",
                  email: "pedropan@hotmail.fr",
                  description: "Hi folks, I'm Pedro. Pretty sure that I am the best coder around Brussels. Contact me if you need any help developing your nonesense.",
                  experience: "Teacher @Le Wagon",
                  language: "Ruby on Rails, JavaScript, SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 60)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Pedro's chat")

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t1.6435-9/94022389_2884481661640650_4858584588554862592_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_ohc=MlXHjcXVsoMAX8HKwFN&_nc_ht=scontent-bru2-1.xx&oh=00_AfBGtiOrXeoWGFni5UiHJ0GQAGkZ9CLU8zpxeW4EOALSLA&oe=63B57940")
coder = User.new(first_name: "Arthur",
                  last_name: "Van Marcke",
                  username: "arthurvmarcke",
                  password: "123456",
                  email: "arthurvmarcke@gmail.com",
                  description: "TBC",
                  experience: "Product Manager",
                  language: "SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Arthur's chat")

file = URI.open("https://scontent-ams4-1.xx.fbcdn.net/v/t1.6435-9/109311617_10158634380759777_683202610831354315_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XSNe-YkMcjMAX85MuS1&_nc_ht=scontent-ams4-1.xx&oh=00_AfAJc6dUpi262c3QUqi-3vqMgVL9vUaQ3T8FscxTegcmbw&oe=63B55200")
coder = User.new(first_name: "Charlotte",
                  last_name: "Altieri",
                  username: "chaltieri",
                  password: "123456",
                  email: "chaltieri@gmail.com",
                  description: "TBC",
                  experience: "Project Manager",
                  language: "SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Charlotte's chat")

file = URI.open("https://scontent-ams4-1.xx.fbcdn.net/v/t1.6435-9/128881480_10214441848560100_7577883150356549532_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=oJPYDHyOIegAX_Xppph&_nc_ht=scontent-ams4-1.xx&oh=00_AfCtVvM0nZiW9Elj91Ss7-4AI_OWN1MXFWkTYBILwJfsMg&oe=63B554CC")
coder = User.new(first_name: "Angélique",
                  last_name: "Bagnis",
                  username: "angelbagnis",
                  password: "123456",
                  email: "angelbagnis@gmail.com",
                  description: "TBC",
                  experience: "Project Manager",
                  language: "SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Angélique's chat")

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t39.30808-6/308000392_5640360126027083_7008658893780604252_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=R3DWw2r-sfwAX8o81x8&_nc_ht=scontent-bru2-1.xx&oh=00_AfBZ4ixsI9126GfgYyAafKW-b3v1f9ve1G9IL1lp5E1f6A&oe=6392A25D")
coder = User.new(first_name: "Sébastien",
                  last_name: "Chapel",
                  username: "sebchapel",
                  password: "123456",
                  email: "sebchapel@gmail.com",
                  description: "TBC",
                  experience: "Project Manager",
                  language: "SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Sébastien's chat")

file = URI.open("https://avatars.githubusercontent.com/u/115412551?v=4")
coder = User.new(first_name: "Arthur",
                  last_name: "Peers",
                  username: "arthurpeers",
                  password: "123456",
                  email: "arthurpeers@gmail.com",
                  description: "TBC",
                  experience: "Front-End Developer",
                  language: "SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Arthur's chat")

file = URI.open("https://media-exp1.licdn.com/dms/image/C4E03AQFeqHAFbsUzkg/profile-displayphoto-shrink_800_800/0/1603376731661?e=1675900800&v=beta&t=Yd-ye799rEXjwedKU6PJRESnH9kz9mnoaAPrE3AZFL0")
coder = User.new(first_name: "Gideon",
                  last_name: "Maydell",
                  username: "gideonmaydell",
                  password: "123456",
                  email: "gideonmaydell@gmail.com",
                  description: "Hi! I am Gideon, an Austrian who grew up in Vienna, Berlin and northern Italy. Did a Bachelor's Degree in History. Had multiple part-time jobs next to university since I was 19. I want to learn how to code in order to work in tech and eventually start my own project. I look forward to meeting you!",
                  experience: "Back-End Developer",
                  language: "SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Gideon's chat")

file = URI.open("https://media-exp1.licdn.com/dms/image/D4E03AQGusN5DxLRVDQ/profile-displayphoto-shrink_800_800/0/1666078414736?e=1675900800&v=beta&t=b8GbO1MIonv3vONKOs5jeQjqA5zkJemvXw7yBqZL-g4")
coder = User.new(first_name: "Boris",
                  last_name: "Mwanga",
                  username: "borismwanga",
                  password: "123456",
                  email: "borismwanga@gmail.com",
                  description: "Hi everyone! My current goal is to start a career as a full-stack web developer. Coming up with creative ideas to improve something, or make something new because I don’t want only to build web applications, I want to build experiences for all.",
                  experience: "Back-End Developer",
                  language: "SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Boris's chat")

file = URI.open("https://media-exp1.licdn.com/dms/image/D4E35AQE0g9CHlUyAoQ/profile-framedphoto-shrink_800_800/0/1664454106154?e=1670511600&v=beta&t=bAkx5DboMXoKsl0Mfkq5tUootYGDRmF9ZOOj6vjawYE")
company = User.new(first_name: "Stan",
                  last_name: "Stanistan",
                  username: "stan-coder-pro",
                  password: "123456",
                  email: "stan@gmail.com",
                  description: "God Master Coder, Full Stack Developper, I don't like front-end and I make funny jokes.",
                  experience: "Ruby on Rails Teacher @Le Wagon",
                  language: "HTML, CSS, JavaScript, C++, Java, Rails, Ruby",
                  availability: "ASAP",
                  role: "Company",
                  years_of_experience: 1)
                  company.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company.save

project = Project.new(deadline: "31/12/2023",
                    name: "Bueno Inc website creation",
                    description: "We are looking for junior full stack developper. We need to create several websites for our client",
                    status: "in progress",
                    created_at: "31/11/2022",
                    #updated_at: ""
                  )
project.save

project = Project.new(deadline: "31/11/2022",
                    name: "Rails project in IP sector",
                    description: "We are looking for a senior back-end developper specialized in rails",
                    status: "in progress",
                    created_at: "31/11/2022",
                    #updated_at: ""
                  )
project.save

project = Project.new(deadline: "31/12/2024",
                    name: "Help us to grow  ",
                    description: "We are a young start up looking for junior profile to help us to growth.",
                    status: "in progress",
                    created_at: "31/11/2022",
                  # updated_at: ""
                  )
project.save

project = Project.new(deadline: "31/12/2025",
                    name: "Big project for big $$$",
                    description: "We need people to code for us, come here we have a lot of money to give you",
                    status: "in progress",
                    created_at: "31/11/2022",
                    #updated_at: ""
                  )
project.save

project = Project.new(deadline: "31/12/2026",
                    name: "Marie's project for world domination",
                    description: "Our company is looking for young full stack developper to change the world, using our brand new tool that can change people life, inspired by our beloved CEO Marie",
                    status: "in progress",
                    created_at: "31/11/2022",
                    #updated_at: ""
                  )
project.save
