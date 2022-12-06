# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying all Messages"
Message.destroy_all
puts "Destroying all Chatrooms"
Chatroom.destroy_all
puts "Destroying all Reviews"
Review.destroy_all
puts "Destroying all projects"
Project.destroy_all
puts "Destroying all posts"
Post.destroy_all
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
Review.create!(content: "It was wonderful to work with Marie, this is the best boss I ever had",
  rating: 5,
  user_id: coder.id)
Review.create!(content: "If you need a CEO, take Marie, perfect match for your company !!",
  rating: 4,
  user_id: coder.id)
Review.create!(content: "Perfect ! I loved to work with Marie, she is patient and explains very well!",
  rating: 3,
  user_id: coder.id)

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
Review.create!(content: "It was nice to work with Laura, I recommend her if you have any work to do with Front-End",
  rating: 5,
  user_id: coder.id)
Review.create!(content: "Amazing cowork as well as a really good horse rider to go on weekend with !",
  rating: 4,
  user_id: coder.id)
Review.create!(content: "Makes a lot of jokes and disturb the peace in the room",
  rating: 3,
  user_id: coder.id)

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
Review.create!(content: "Super coder. Il a été à l'écoute de mes demandes et m'a clarifié certains points sur Python, HTML & Rails. Je recommande !",
  rating: 5,
  user_id: coder.id)
Review.create!(content: "Forgot our meeting",
  rating: 1,
  user_id: coder.id)
Review.create!(content: "Bring his dog during meeting :D !",
  rating: 4,
  user_id: coder.id)

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
Review.create!(content: "Yound and dynamic, with great work ethics, her knowledge in computer science is incredible",
  rating: 5,
  user_id: coder.id)
Review.create!(content: "Je recommande vivement Daphné qui m'a aidée durant l'été afin de réussir un cours en programmation. Très dynamique et passionnée, on ne s'ennuie pas avec elle. Merci encore :D",
  rating: 4,
  user_id: coder.id)
Review.create!(content: "Good person, I recommend",
  rating: 3,
  user_id: coder.id)

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
Review.create!(content: "Trustworthy, really good coder, work is done on time",
  rating: 5,
  user_id: coder.id)
Review.create!(content: "The work was done, but he missed an important deadline, still I would recommend Ben",
  rating: 3,
  user_id: coder.id)
Review.create!(content: "Perfect if you need some help with Ruby, HTML, C++, Python",
  rating: 5,
  user_id: coder.id)

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
Review.create!(content: "Amazing teacher, with good solid knowledge in Rails",
  rating: 5,
  user_id: coder.id)
Review.create!(content: "J'ai adoré bosser avec Pedro, toujours de bonne humeur et là pour aider quand on se retrouve face à un problème",
  rating: 5,
  user_id: coder.id)
Review.create!(content: "En plus d'être un super developeur back end, Pedro connait les meilleurs restaurants dans Bruxelles, par contre ne rien demander en front end, un vrai désastre !",
  rating: 3,
  user_id: coder.id)

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t1.6435-9/94022389_2884481661640650_4858584588554862592_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_ohc=MlXHjcXVsoMAX8HKwFN&_nc_ht=scontent-bru2-1.xx&oh=00_AfBGtiOrXeoWGFni5UiHJ0GQAGkZ9CLU8zpxeW4EOALSLA&oe=63B57940")
coder = User.new(first_name: "Arthur",
                  last_name: "Van Marcke",
                  username: "arthurvmarcke",
                  password: "123456",
                  email: "arthurvmarcke@gmail.com",
                  description: "I am a former banker, after working 5 years in management, I decided to change my career and learn to code",
                  experience: "Product Manager",
                  language: "SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Arthur's chat")
Review.create!(content: "Arthur is a very talented person with a strong motivation, excellent communication skills and a high degree of professionalism",
  rating: 4,
  user_id: coder.id)
Review.create!(content: "I really enjoyed working with Arthur while he was working with Business France as an expert of the infrastructure",
  rating: 3,
  user_id: coder.id)
Review.create!(content: "Animé par le souci constant de satisfaire les clients, Arthur fait preuve de beaucoup de compétences et d’efficacité.",
  rating: 4,
  user_id: coder.id)

file = URI.open("https://scontent-ams4-1.xx.fbcdn.net/v/t1.6435-9/109311617_10158634380759777_683202610831354315_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XSNe-YkMcjMAX85MuS1&_nc_ht=scontent-ams4-1.xx&oh=00_AfAJc6dUpi262c3QUqi-3vqMgVL9vUaQ3T8FscxTegcmbw&oe=63B55200")
coder = User.new(first_name: "Charlotte",
                  last_name: "Altieri",
                  username: "chaltieri",
                  password: "123456",
                  email: "chaltieri@gmail.com",
                  description: "Hello everyone, I am Charlotte, I work as a consultant, I decided to learn how to code to help evenmore my clients",
                  experience: "Project Manager",
                  language: "SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Charlotte's chat")
Review.create!(content: "Charlotte is a dream person to have in one's team. She is a very enthusiastic person which brings a lot of energy to everyone.",
  rating: 5,
  user_id: coder.id)
Review.create!(content: "Comme manager, Charlotte a su me guider dans mes débuts et m'a permis de relever de vrais défis. Elle fait preuve de bienveillance et sait révéler le meilleur de son équipe.",
  rating: 3,
  user_id: coder.id)
Review.create!(content: "Did not provide want we asked",
  rating: 1,
  user_id: coder.id)

file = URI.open("https://scontent-ams4-1.xx.fbcdn.net/v/t1.6435-9/128881480_10214441848560100_7577883150356549532_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=oJPYDHyOIegAX_Xppph&_nc_ht=scontent-ams4-1.xx&oh=00_AfCtVvM0nZiW9Elj91Ss7-4AI_OWN1MXFWkTYBILwJfsMg&oe=63B554CC")
coder = User.new(first_name: "Angélique",
                  last_name: "Bagnis",
                  username: "angelbagnis",
                  password: "123456",
                  email: "angelbagnis@gmail.com",
                  description: "Bonjour je suis Angléique, après avoir été professeur de math pendant 10 ans, j'ai décidé d'apprendre le code pour changer la direction de ma carrière",
                  experience: "Project Manager",
                  language: "SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Angélique's chat")
Review.create!(content: "Véritable couteau suisse, Angélique sait s’adapter à différentes situations et a une grande maîtrise de l’expérience client dans toute sa globalité.",
  rating: 2,
  user_id: coder.id)
Review.create!(content: "C’est un plaisir quotidien que de collaborer avec Charlotte",
  rating: 2,
  user_id: coder.id)
Review.create!(content: "Super personne très inspirante parcours admiratif",
  rating: 4,
  user_id: coder.id)

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t39.30808-6/308000392_5640360126027083_7008658893780604252_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=R3DWw2r-sfwAX8o81x8&_nc_ht=scontent-bru2-1.xx&oh=00_AfBZ4ixsI9126GfgYyAafKW-b3v1f9ve1G9IL1lp5E1f6A&oe=6392A25D")
coder = User.new(first_name: "Sébastien",
                  last_name: "Chapel",
                  username: "sebchapel",
                  password: "123456",
                  email: "sebchapel@gmail.com",
                  description: "Hello, I am Seb. I just graduated from KU Leuven, I decided to learn to code",
                  experience: "Project Manager",
                  language: "SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Sébastien's chat")
Review.create!(content: "Il est sympa, c'est un brave garçon",
  rating: 5,
  user_id: coder.id)
Review.create!(content: "Quand il aime travailler, il ne compte pas ses heures !!",
  rating: 5,
  user_id: coder.id)
Review.create!(content: "Très BG",
  rating: 5,
  user_id: coder.id)

file = URI.open("https://avatars.githubusercontent.com/u/115412551?v=4")
coder = User.new(first_name: "Arthur",
                  last_name: "Peers",
                  username: "arthurpeers",
                  password: "123456",
                  email: "arthurpeers@gmail.com",
                  description: "Hello my name is Arthur I'm 22 years old. I studied economics at Solvay and then at Ichec but it was not suitable for me, so I decided to stop the university system for an apprenticeship system like the Wagon (intensive training). I chose to learn coding because it is a necessity in our generations, it was mandatory for me to know coding. What I like the most in web development is that everything is possible from the creativity level, I think that it is especially the front end that will amuse me",
                  experience: "Front-End Developer",
                  language: "SQL",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder.save
Chatroom.create(id: coder.id, name: "Arthur's chat")
Review.create!(content: "Du haut de ses 22 ans, c'est un très charmant jeune homme",
  rating: 5,
  user_id: coder.id)
Review.create!(content: "Il est très flemmard, mais sympa",
  rating: 1,
  user_id: coder.id)
Review.create!(content: "Très bon developper, il vous fera des arrières plans de malade",
  rating: 3,
  user_id: coder.id)

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
Review.create!(content: "After working for 10 years in Belgium, Gideon is the perfect match if you wish to code a website in German or French",
  rating: 4,
  user_id: coder.id)
Review.create!(content: "Gideon is good in what he does but unfortunately he did not understood our project",
  rating: 2,
  user_id: coder.id)
Review.create!(content: "Best time with Gideon, sehr gut !",
  rating: 5,
  user_id: coder.id)

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
Review.create!(content: "The website was really nice but it did not reflect our vision",
  rating: 2,
  user_id: coder.id)
Review.create!(content: "Very good person to work with",
  rating: 4,
  user_id: coder.id)
Review.create!(content: "Funny and hard worker, perfect !",
  rating: 5,
  user_id: coder.id)

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t1.6435-9/88237179_487104992167597_8276528710992003072_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=G4J7st7kbaYAX8x2-Pj&_nc_ht=scontent-bru2-1.xx&oh=00_AfCTFAd9_N3Ev75YDXIBiZ9vQDnl92gky3BMPTkUdOEp1Q&oe=63B6B173")
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

file = URI.open("https://images-workbench.99static.com/FudNiZXsxaORzpSvZvHDIzFG8pU=/http://s3.amazonaws.com/projects-files/130/13004/1300459/04fa5661-bbfc-4620-b9ca-f1c9ce629355.jpg")
company = User.new(first_name: "Cassandra",
                  last_name: "Name",
                  username: "cassandra",
                  password: "123456",
                  email: "cassandra@gmail.com",
                  description: "God Master Coder, Full Stack Developper, I don't like front-end and I make funny jokes.",
                  experience: "Ruby on Rails Teacher @Le Wagon",
                  language: "HTML, CSS, JavaScript, C++, Java, Rails, Ruby",
                  availability: "ASAP",
                  role: "Company",
                  years_of_experience: 1)
                  company.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company.save

post = Project.new(deadline: "31/12/2023",
                    name: "Bueno Inc website creation",
                    description: "We are looking for junior full stack developper. We need to create several websites for our client",
                    status: "in progress",
                    created_at: "31/11/2022",
                    #updated_at: ""
                  )
post.save

post = Project.new(deadline: "31/11/2022",
                    name: "Rails project in IP sector",
                    description: "We are looking for a senior back-end developper specialized in rails",
                    status: "in progress",
                    created_at: "31/11/2022",
                    #updated_at: ""
                  )
post.save

post = Project.new(deadline: "31/12/2024",
                    name: "Help us to grow  ",
                    description: "We are a young start up looking for junior profile to help us to growth.",
                    status: "in progress",
                    created_at: "31/11/2022",
                  # updated_at: ""
                  )
post.save

post = Project.new(deadline: "31/12/2025",
                    name: "Big project for big $$$",
                    description: "We need people to code for us, come here we have a lot of money to give you",
                    status: "in progress",
                    created_at: "31/11/2022",
                    #updated_at: ""
                  )
post.save

post = Project.new(deadline: "31/12/2026",
                    name: "Marie's project for world domination",
                    description: "Our company is looking for young full stack developper to change the world, using our brand new tool that can change people life, inspired by our beloved CEO Marie",
                    status: "in progress",
                    created_at: "31/11/2022",
                    #updated_at: ""
                  )
post.save
