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


### CODERS ##############################################################################################################################################################################
puts "Creating coders........"

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t39.30808-6/274588846_10158911071134065_5127209258883963504_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Ns37XXBAAbEAX9rB_lt&_nc_ht=scontent-bru2-1.xx&oh=00_AfBbfrJSUFWzWUtVlm5MHb4ZyzBx85xC12IX9a1TF-9XyQ&oe=6398EFB1")
coder1 = User.new(first_name: "Marie",
                last_name: "Altieri",
                username: "marie-altieri",
                password: "123456",
                email: "marie.altieri@hotmail.fr",
                description: "
                Hi everyone, I'm Marie!
                Coming from a hospitality background with more than four years of experience, I want to learn a new skill to add to my current experience and background, in hopes to create my own business in the future.
                I look forward to this new adventure ! CEO of Code It. I founded the company to help people and give orders to my team.",
                experience: "CEO of Code It",
                language: "Python, C#",
                availability: "ASAP",
                role: "Coder",
                years_of_experience: 1)
                coder1.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder1.save
puts " coder 1"
Chatroom.create(id: coder1.id, name: "Marie's chat")
Review.create!(content: "It was wonderful to work with Marie, this is the best boss I ever had",
rating: 5,
user_id: coder1.id)
Review.create!(content: "If you need a CEO, take Marie, perfect match for your company !!",
rating: 4,
user_id: coder1.id)
Review.create!(content: "Perfect ! I loved to work with Marie, she is patient and explains very well!",
rating: 3,
user_id: coder1.id)

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t1.18169-9/10559666_428710023937626_2814290272899354317_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=19026a&_nc_ohc=FIZMlphJej4AX-8Y-sG&_nc_ht=scontent-bru2-1.xx&oh=00_AfCg6PX1YxDx962DTM8ZW0qZFYInup1MHCgf80CIhy5Ghw&oe=63B57966")
coder2 = User.new(first_name: "Laura",
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
                coder2.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder2.save
puts " coder 2"
Chatroom.create(id: coder2.id, name: "Laura's chat")
Review.create!(content: "It was nice to work with Laura, I recommend her if you have any work to do with Front-End",
rating: 5,
user_id: coder2.id)
Review.create!(content: "Amazing cowork as well as a really good horse rider to go on weekend with !",
rating: 4,
user_id: coder2.id)
Review.create!(content: "Makes a lot of jokes and disturb the peace in the room",
rating: 3,
user_id: coder2.id)

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t31.18172-8/22254862_10159533623285066_5753923098360108724_o.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_ohc=as_4sii4uisAX-vX7PI&_nc_ht=scontent-bru2-1.xx&oh=00_AfD51hjKAgtu-WrCcYfBBoKkAT8qdaeGdSq3MsRiZoAhXQ&oe=63B56040")
coder3 = User.new(first_name: "Victor",
                last_name: "de Spirlet",
                username: "vic_dsp",
                password: "123456",
                email: "vic_dsp@gmail.com",
                description: "Hello my name is Victor, after 4 years of working within acustomer success team in Brussels and Paris, I have decided to learn how to code, to learn new skills and change my career path.",
                experience: "Front-End Developper",
                language: "PHP, C++",
                availability: "ASAP",
                role: "Coder",
                years_of_experience: 1)
                coder3.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder3.save
Chatroom.create(id: coder3.id, name: "Victor's chat")
Review.create!(content: "Super coder. Il a été à l'écoute de mes demandes et m'a clarifié certains points sur Python, HTML & Rails. Je recommande !",
rating: 5,
user_id: coder3.id)
Review.create!(content: "Forgot our meeting",
rating: 1,
user_id: coder3.id)
Review.create!(content: "Bring his dog during meeting :D !",
rating: 4,
user_id: coder3.id)

file = URI.open("https://avatars.githubusercontent.com/u/113897359?v=4")
coder5 = User.new(first_name: "Daphné",
                last_name: "Lefevre",
                username: "daph_lefevre",
                password: "123456",
                email: "daphlefevre@gmail.com",
                description: "Hello, my name is Daphné. I am a 19 year old dynamic and motivated person. I studied computer science in Amsterdam for 3 years. I am committed to my work and will do everything in my power to give the best I can. I am bilingual in French and English, learning Dutch. My young age doesn’t mean I cannot handle great responsibilities. At the age of 16 I was elected leader of a youth movement of approximately 200 children. That means I oversaw the entire process of the organization, handling the social contacts with the parents and, at the same time, managing a team of 25 monitors.
                I am specialized in C++ and Scala programming languages.",
                experience: "Back-End Developper",
                language: "Ruby, C++, Python, Scala",
                availability: "ASAP",
                role: "Coder",
                years_of_experience: 2)
                coder5.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder5.save
Chatroom.create(id: coder5.id, name: "Daphne's chat")
Review.create!(content: "Yound and dynamic, with great work ethics, her knowledge in computer science is incredible",
rating: 5,
user_id: coder5.id)
Review.create!(content: "I highly recommend Daphné who helped me during the summer to pass a course in programming. Very dynamic and passionate, you never get bored with her. Thanks again :D",
rating: 5,
user_id: coder5.id)
Review.create!(content: "Good person, I recommend",
rating: 4,
user_id: coder5.id)
Review.create!(content: "Perfect. Daphné saved my project and helped me put to life what I thought wasn't possible! ",
rating: 5,
user_id: coder5.id)
Review.create!(content: "Kind hearted person. Daphné payed a lot of attention to the project she was given and did her best to acheive our shared objectives.",
rating: 4,
user_id: coder5.id)

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t1.6435-9/37974642_2208097952759146_750759686340345856_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=CrProceVQYMAX_nVVYj&_nc_ht=scontent-bru2-1.xx&oh=00_AfDD-3kM_vZXixgOZWfZA-Y7aLmZ0M3If6pcqH-wkcOpRg&oe=63B52ACD")
coder6 = User.new(first_name: "Benjamin",
                last_name: "Boulle",
                username: "benboulle",
                password: "123456",
                email: "benjamin.boulle@gmail.com",
                description: "Hello everyome, I am Benjamin! I've been a fan of coding ever since my early age and code everyday as a hobby. I will nearly join the army but I am very happy to help you with any project you have. I studied civil engineering for 5 years, my options were biomedical and mechanic but I wanted to code more, this is why I started Le Wagon. After Le Wagon I want to work in a team of few people to develop websites and application.",
                experience: "Teacher Assistant @Le Wagon",
                language: "Swift, Java, Go",
                availability: "ASAP",
                role: "Coder",
                years_of_experience: 2)
                coder6.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder6.save
Chatroom.create(id: coder6.id, name: "Benjamin's chat")
Review.create!(content: "Trustworthy, really good coder, work is done on time",
rating: 5,
user_id: coder6.id)
Review.create!(content: "The work was done, but he missed an important deadline, still I would recommend Ben",
rating: 3,
user_id: coder6.id)
Review.create!(content: "Perfect if you need some help with Ruby, HTML, C++, Python",
rating: 5,
user_id: coder6.id)

file = URI.open("https://media-exp1.licdn.com/dms/image/C4E03AQEW7mvQt58koA/profile-displayphoto-shrink_800_800/0/1646738735191?e=1675900800&v=beta&t=FmbzrrWvOF68iudtbWAb85vqxE0dBvzYmD_Dq_F3zhw")
coder7 = User.new(first_name: "Pedro",
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
                coder7.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder7.save
Chatroom.create(id: coder7.id, name: "Pedro's chat")
Review.create!(content: "Amazing teacher, with good solid knowledge in Rails",
rating: 5,
user_id: coder7.id)
Review.create!(content: "J'ai adoré bosser avec Pedro, toujours de bonne humeur et là pour aider quand on se retrouve face à un problème",
rating: 5,
user_id: coder7.id)
Review.create!(content: "En plus d'être un super developeur back end, Pedro connait les meilleurs restaurants dans Bruxelles, par contre ne rien demander en front end, un vrai désastre !",
rating: 3,
user_id: coder7.id)

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t1.6435-9/94022389_2884481661640650_4858584588554862592_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_ohc=MlXHjcXVsoMAX8HKwFN&_nc_ht=scontent-bru2-1.xx&oh=00_AfBGtiOrXeoWGFni5UiHJ0GQAGkZ9CLU8zpxeW4EOALSLA&oe=63B57940")
coder8 = User.new(first_name: "Arthur",
                last_name: "Van Marcke",
                username: "arthurvmarcke",
                password: "123456",
                email: "arthurvmarcke@gmail.com",
                description: "I am a former banker, after working 5 years in management, I decided to change my career and learn to code",
                experience: "Product Manager",
                language: "Ruby",
                availability: "ASAP",
                role: "Coder",
                years_of_experience: 3)
                coder8.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder8.save
Chatroom.create(id: coder8.id, name: "Arthur's chat")
Review.create!(content: "Arthur is a very talented person with a strong motivation, excellent communication skills and a high degree of professionalism",
rating: 4,
user_id: coder8.id)
Review.create!(content: "I really enjoyed working with Arthur while he was working with Business France as an expert of the infrastructure",
rating: 3,
user_id: coder8.id)
Review.create!(content: "Animé par le souci constant de satisfaire les clients, Arthur fait preuve de beaucoup de compétences et d’efficacité.",
rating: 4,
user_id: coder8.id)

file = URI.open("https://scontent-ams4-1.xx.fbcdn.net/v/t1.6435-9/109311617_10158634380759777_683202610831354315_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XSNe-YkMcjMAX85MuS1&_nc_ht=scontent-ams4-1.xx&oh=00_AfAJc6dUpi262c3QUqi-3vqMgVL9vUaQ3T8FscxTegcmbw&oe=63B55200")
coder9 = User.new(first_name: "Charlotte",
                last_name: "Altieri",
                username: "chaltieri",
                password: "123456",
                email: "chaltieri@gmail.com",
                description: "Hello everyone, I am Charlotte, I work as a consultant, I decided to learn how to code to help evenmore my clients",
                experience: "Project Manager",
                language: "HTML, CSS",
                availability: "ASAP",
                role: "Coder",
                years_of_experience: 3)
                coder9.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder9.save
Chatroom.create(id: coder9.id, name: "Charlotte's chat")
Review.create!(content: "Charlotte is a dream person to have in one's team. She is a very enthusiastic person which brings a lot of energy to everyone.",
rating: 5,
user_id: coder9.id)
Review.create!(content: "Comme manager, Charlotte a su me guider dans mes débuts et m'a permis de relever de vrais défis. Elle fait preuve de bienveillance et sait révéler le meilleur de son équipe.",
rating: 3,
user_id: coder9.id)
Review.create!(content: "Did not provide want we asked",
rating: 1,
user_id: coder9.id)

file = URI.open("https://scontent-ams4-1.xx.fbcdn.net/v/t1.6435-9/128881480_10214441848560100_7577883150356549532_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=oJPYDHyOIegAX_Xppph&_nc_ht=scontent-ams4-1.xx&oh=00_AfCtVvM0nZiW9Elj91Ss7-4AI_OWN1MXFWkTYBILwJfsMg&oe=63B554CC")
coder10 = User.new(first_name: "Angélique",
                last_name: "Bagnis",
                username: "angelbagnis",
                password: "123456",
                email: "angelbagnis@gmail.com",
                description: "Bonjour je suis Angléique, après avoir été professeur de math pendant 10 ans, j'ai décidé d'apprendre le code pour changer la direction de ma carrière",
                experience: "Project Manager",
                language: "JavaScript, C++, SQL",
                availability: "ASAP",
                role: "Coder",
                years_of_experience: 3)
                coder10.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder10.save
Chatroom.create(id: coder10.id, name: "Angélique's chat")
Review.create!(content: "Véritable couteau suisse, Angélique sait s’adapter à différentes situations et a une grande maîtrise de l’expérience client dans toute sa globalité.",
rating: 2,
user_id: coder10.id)
Review.create!(content: "C’est un plaisir quotidien que de collaborer avec Angélique",
rating: 2,
user_id: coder10.id)
Review.create!(content: "Super personne très inspirante parcours admiratif",
rating: 4,
user_id: coder10.id)

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t39.30808-6/308000392_5640360126027083_7008658893780604252_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=R3DWw2r-sfwAX8o81x8&_nc_ht=scontent-bru2-1.xx&oh=00_AfBZ4ixsI9126GfgYyAafKW-b3v1f9ve1G9IL1lp5E1f6A&oe=6392A25D")
coder11 = User.new(first_name: "Sébastien",
                last_name: "Chapel",
                username: "sebchapel",
                password: "123456",
                email: "sebchapel@gmail.com",
                description: "Hello, I am Seb. I just graduated from KU Leuven, I decided to learn to code",
                experience: "Project Manager",
                language: "Go, C#",
                availability: "ASAP",
                role: "Coder",
                years_of_experience: 3)
                coder11.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder11.save
Chatroom.create(id: coder11.id, name: "Sébastien's chat")
Review.create!(content: "Il est sympa, c'est un brave garçon",
rating: 5,
user_id: coder11.id)
Review.create!(content: "Quand il aime travailler, il ne compte pas ses heures !!",
rating: 5,
user_id: coder11.id)
Review.create!(content: "Très BG",
rating: 5,
user_id: coder11.id)

file = URI.open("https://avatars.githubusercontent.com/u/115412551?v=4")
coder12 = User.new(first_name: "Arthur",
                last_name: "Peers",
                username: "arthurpeers",
                password: "123456",
                email: "arthurpeers@gmail.com",
                description: "Hello my name is Arthur I'm 22 years old. I studied economics at Solvay and then at Ichec but it was not suitable for me, so I decided to stop the university system for an apprenticeship system like the Wagon (intensive training). I chose to learn coding because it is a necessity in our generations, it was mandatory for me to know coding. What I like the most in web development is that everything is possible from the creativity level, I think that it is especially the front end that will amuse me",
                experience: "Front-End Developer",
                language: "HTML, CSS, JavaScript",
                availability: "ASAP",
                role: "Coder",
                years_of_experience: 3)
                coder12.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder12.save
Chatroom.create(id: coder12.id, name: "Arthur's chat")
Review.create!(content: "Du haut de ses 22 ans, c'est un très charmant jeune homme",
rating: 5,
user_id: coder12.id)
Review.create!(content: "Il est très flemmard, mais sympa",
rating: 1,
user_id: coder12.id)
Review.create!(content: "Très bon developper, il vous fera des arrières plans de malade",
rating: 3,
user_id: coder12.id)

file = URI.open("https://media-exp1.licdn.com/dms/image/C4E03AQFeqHAFbsUzkg/profile-displayphoto-shrink_800_800/0/1603376731661?e=1675900800&v=beta&t=Yd-ye799rEXjwedKU6PJRESnH9kz9mnoaAPrE3AZFL0")
coder13 = User.new(first_name: "Gideon",
                last_name: "Maydell",
                username: "gideonmaydell",
                password: "123456",
                email: "gideonmaydell@gmail.com",
                description: "Hi! I am Gideon, an Austrian who grew up in Vienna, Berlin and northern Italy. Did a Bachelor's Degree in History. Had multiple part-time jobs next to university since I was 19. I want to learn how to code in order to work in tech and eventually start my own project. I look forward to meeting you!",
                experience: "Back-End Developer",
                language: "Python",
                availability: "ASAP",
                role: "Coder",
                years_of_experience: 3)
                coder13.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder13.save
Chatroom.create(id: coder13.id, name: "Gideon's chat")
Review.create!(content: "After working for 10 years in Belgium, Gideon is the perfect match if you wish to code a website in German or French",
rating: 4,
user_id: coder13.id)
Review.create!(content: "Gideon is good in what he does but unfortunately he did not understood our project",
rating: 2,
user_id: coder13.id)
Review.create!(content: "Best time with Gideon, sehr gut !",
rating: 5,
user_id: coder13.id)

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665730817/sjuqrqpbjkf9pmjnxcpo.jpg")
coder14 = User.new(first_name: "Boris",
                last_name: "Mwanga",
                username: "borismwanga",
                password: "123456",
                email: "borismwanga@gmail.com",
                description: "Hi everyone! My current goal is to start a career as a full-stack web developer. Coming up with creative ideas to improve something, or make something new because I don’t want only to build web applications, I want to build experiences for all.",
                experience: "Back-End Developer",
                language: "Python, Ruby, SQL",
                availability: "ASAP",
                role: "Coder",
                years_of_experience: 3)
                coder14.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder14.save
Chatroom.create(id: coder14.id, name: "Boris's chat")
Review.create!(content: "The website was really nice but it did not reflect our vision",
rating: 2,
user_id: coder14.id)
Review.create!(content: "Very good person to work with",
rating: 4,
user_id: coder14.id)
Review.create!(content: "Funny and hard worker, perfect !",
rating: 5,
user_id: coder14.id)

file = URI.open("https://media-exp1.licdn.com/dms/image/C4D03AQG0O0HaxooGYQ/profile-displayphoto-shrink_800_800/0/1573028997068?e=1675900800&v=beta&t=8J8-jj0RID0yoaFEJOy8ECxfnXCfnLicoI_UyavU_9Q")
coder15 = User.new(first_name: "Gabby",
                last_name: "Bordeais",
                username: "gabbyb",
                password: "123456",
                email: "gabby@gmail.com",
                description: "Young graduate in Biomolecular Sciences (Msc) and Biochemistry (Bsc), I am dynamic, motivated and eager to learn! I have decided to change my career path to learn how to code to help young companies to growth !",
                experience: "Back-End Developer",
                language: "Python, Ruby, SQL, HTML, Scala, NoSQL, CSS",
                availability: "ASAP",
                role: "Coder",
                years_of_experience: 3)
                coder15.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder15.save
Chatroom.create(id: coder15.id, name: "gabby's chat")
Review.create!(content: "Gabrielle is someone I have been the pleasure to work with on several projects. Her passion, dedication, and creativity, added to his leadership make him a driving force in any project",
rating: 5,
user_id: coder15.id)
Review.create!(content: "Very good person to work with",
rating: 4,
user_id: coder15.id)
Review.create!(content: "Funny and hard worker, perfect !",
rating: 5,
user_id: coder15.id)

file = URI.open("https://media-exp1.licdn.com/dms/image/C4E03AQEhsDpRe-9Jrw/profile-displayphoto-shrink_800_800/0/1585152503592?e=1675900800&v=beta&t=jDbFvrAyS6NGsDhLJMvYYTPG3I5RSAVlLvk5pmJCUN4")
coder16 = User.new(first_name: "Charles",
                  last_name: "Dumont-des-Lacs",
                  username: "CharDL",
                  password: "123456",
                  email: "charlesdl@gmail.com",
                  description: "I am eager to use the skills I have learned to achieve my next professional missions. Through my previous experiences and studies, I am able to adapt quickly to new environments and situations as well as working either with a team or alone. .",
                  experience: "Back-End Developer, +5 years experience as country manager, founder of Freends",
                  language: "Python, Ruby, SQL, Excel",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder16.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder16.save
Chatroom.create(id: coder16.id, name: "Boris's chat")
Review.create!(content: "working with Charles was a real pleasure, serious person and super fun to be around with",
rating: 5,
user_id: coder16.id)
Review.create!(content: "Very good person to work with",
rating: 5,
user_id: coder16.id)
Review.create!(content: "Funny and hard worker, perfect !",
rating: 5,
user_id: coder16.id)

file = URI.open("https://ca.slack-edge.com/T02NE0241-U03TF6GTUJE-d9885ba59966-512")
coder17 = User.new(first_name: "Stan",
                  last_name: "Boyet",
                  username: "StanleMan",
                  password: "123456",
                  email: "stanstan@gmail.com",
                  description: "I spent the last 8 years as a Co-Founder and CTO at @Drawbotics & @Mosaic. We grew to 30+ FTE and I led the Engineering & Product department to 15 FTE. I loved everything in it, from the hands-on days to the manager-of-manager ones",
                  experience: "Back-End Developer, +5 years experience as country manager, founder of Drawbotics, teacher at Le Wagon",
                  language: "Python, Ruby, SQL, Javascript, Go, Java, Ruby, C and C++ ",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder17.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder17.save
Chatroom.create(id: coder17.id, name: "Stan's chat")
Review.create!(content: "For one year, I worked alongside Stan as Customer Success Manager. Stan is a pedagogical, patient and open-minded CTO, who succeeded in building an inclusive company culture where it feels good to work.",
rating: 5,
user_id: coder17.id)
Review.create!(content: "Stanislas is one of the most extraordinary person I had the chance to meet, with a very rare intelligence. In addition to his great technical capabilities, he has extremely strong communication skills. ",
rating: 5,
user_id: coder17.id)
Review.create!(content: "Funny and probably the best teacher at Le Wagon",
rating: 5,
user_id: coder17.id)

file = URI.open("https://media-exp1.licdn.com/dms/image/C4D03AQHNO8GhHnDz-g/profile-displayphoto-shrink_800_800/0/1584636141723?e=1675900800&v=beta&t=iYbxp6arXUOb00U3LoW48YXAqJUkJUv2b7vpbsATcGE")
coder18 = User.new(first_name: "Tancrède",
                      last_name: "Lynden",
                      username: "Tanlyn",
                      password: "123456",
                      email: "tantan@gmail.com",
                      description: "Je suis complètement mordu par la création de contenu, principalement écrite et audio. Je trouve qu'il y a quelque chose d'extrêmement satisfaisant dans le fait de partir d'une idée, de l'élaborer, pour ensuite créer un contenu matériel autour de cette idée et générer des résultats impactants.",
                      experience: "Community Designer, content manager pendant 4 ans",
                      language: "Python, Ruby, SQL, Java, Javascript",
                      availability: "ASAP",
                      role: "Coder",
                      years_of_experience: 3)
                      coder18.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder18.save
Chatroom.create(id: coder18.id, name: "Tancrède's chat")
Review.create!(content: "working with Charles was a real pleasure, serious person and super fun to be around with",
rating: 4,
user_id: coder18.id)
Review.create!(content: "We worked with Tancrède for 2 years, best 2 years of the company journey",
rating: 5,
user_id: coder18.id)
Review.create!(content: "Funny and hard worker, perfect !",
rating: 3,
user_id: coder18.id)

file = URI.open("https://media-exp1.licdn.com/dms/image/C5603AQHEclVNfhZXbg/profile-displayphoto-shrink_800_800/0/1553709011960?e=1675900800&v=beta&t=RHpMuUdDl_ydWFIKt7Yl1lphBdrS7Iz5ygNGEWTCMyM")
coder19 = User.new(first_name: "Marie",
                    last_name: "Charchalet",
                    username: "Maricha",
                    password: "123456",
                    email: "maria@gmail.com",
                    description: "Currently being a financial auditor in middle market at EY and having had an experience in M&A at Bryan Garnier & Co, I am very eager to leverage the skills I have acquired in order to take the next step in my career. I have a strong people-oriented personality, am fluent in four languages - French, German, English & Spanish, and boast excellent communication skills.",
                    experience: "M&A analyst, management assistant, sales associate",
                    language: "Python, Ruby, SQL, Java, Javascript, Kotlin, PHP, GO, R",
                    availability: "ASAP",
                    role: "Coder",
                    years_of_experience: 3)
                    coder19.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder19.save
Chatroom.create(id: coder19.id, name: "Marie's chat")
Review.create!(content: "Marie has demonstrated an impressive way to understand Experian organization, to adapt quickly to its new business and operating model as well as its value.",
  rating: 4,
  user_id: coder19.id)
Review.create!(content: "I had the privilege of working with Marie since she joined EY. From day one she brought a new dynamic to the legal function.",
  rating: 5,
  user_id: coder19.id)
Review.create!(content: "Marie est une juriste très qualifiée, très consciencieuse, et volontaire dotée d'un véritable professionnalisme. Elle a su développer des qualités de négociatrice, tout en acquérant de nouvelles compétences, allant bien au delà du droit informatique. ",
  rating: 3,
  user_id: coder19.id)

file = URI.open("https://media-exp1.licdn.com/dms/image/C4E03AQE8RCKGoKuWfg/profile-displayphoto-shrink_800_800/0/1616583586461?e=1675900800&v=beta&t=PIyc1shCA0FoaqFQbWg5J0vwUcfVTwgu-QU72KJAiFs")
coder20 = User.new(first_name: "Harold",
                    last_name: "van de dan",
                    username: "Harry",
                    password: "123456",
                    email: "harold@gmail.com",
                    description: "After working for the last 10 years for Belgius bank as a Belfius Investment Partners, I have decided to learn how to code to develop my own trading application",
                    experience: "M&A analyst, management assistant, sales associate",
                    language: "Python, Ruby, SQL, Java, Javascript, Kotlin, PHP, GO, R",
                    availability: "ASAP",
                    role: "Coder",
                    years_of_experience: 3)
                    coder20.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder20.save
Chatroom.create(id: coder20.id, name: "Harold's chat")
Review.create!(content: "Harold has demonstrated an impressive way to understand Experian organization, to adapt quickly to its new business and operating model as well as its value.",
  rating: 4,
  user_id: coder20.id)
Review.create!(content: "I had the privilege of working with Harold since she joined Belfius. From day one she brought a new dynamic to the legal function.",
  rating: 5,
  user_id: coder20.id)
Review.create!(content: "personne très agréable et très pro",
  rating: 3,
  user_id: coder20.id)

file = URI.open("https://media-exp1.licdn.com/dms/image/C5603AQG-i0kZwaUc9Q/profile-displayphoto-shrink_800_800/0/1587372990397?e=1675900800&v=beta&t=1BH_SFGPW1x8QF3PtRdi-pw-7AOSJpeCEgkWWeS0DaU")
coder21 = User.new(first_name: "Pascaline",
                  last_name: "van Ingen",
                  username: "Pasca",
                  password: "123456",
                  email: "pascaline@gmail.com",
                  description: "After working as a lawyer, I decided to do le Wagon to learn new skills for my career",
                  experience: "City Manager, Brussels at Le Wagon, project manager, ex-lawyer",
                  language: "Java, Javascript, Kotlin, PHP, GO, R",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder21.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder21.save
Chatroom.create(id: coder21.id, name: "Pascaline's chat")
Review.create!(content: "Personne très pro et toujours à l'écoute des autres",
rating: 4,
user_id: coder21.id)
Review.create!(content: "It was a pleasure to work with Pascaline",
rating: 5,
user_id: coder21.id)
Review.create!(content: "Best city manger at Le Wagon !",
rating: 5,
user_id: coder21.id)

file = URI.open("https://media-exp1.licdn.com/dms/image/C5603AQETEmpc-Fc4uw/profile-displayphoto-shrink_800_800/0/1632880949382?e=1675900800&v=beta&t=E2AqEd_BQ9EnyyWvwXzS0OIkObZz0ZaQXmoD0G1wgl0")
coder22 = User.new(first_name: "Cassandra ",
                  last_name: "Calaska",
                  username: "Casss",
                  password: "123456",
                  email: "cassandra@gmail.com",
                  description: "A recent career changer into tech, I developed a keen interest in the industry while working in the digital marketing / e-commerce space. After starting to code for fun in my spare time for a few months, I decided to enrol in an immersive full stack web development bootcamp at Le Wagon, which taught me technical skills as well as adapting quickly and easily to new learning environments.",
                  experience: "Junior Software Engineer, Teacher at Le Wagon Belgium, Digital Content Coordinator",
                  language: "Technical skills include JavaScript ES6, Ruby, Rails, HTML, CSS, Sass, Bootstrap, ActiveRecord, PostgreSQL, Heroku, and Git.",
                  availability: "ASAP",
                  role: "Coder",
                  years_of_experience: 3)
                  coder22.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
coder22.save
Chatroom.create(id: coder22.id, name: "Cassandra's chat")
Review.create!(content: "Great teacher, if you search the perfect match for your front end, Cassandra is your solution !",
rating: 5,
user_id: coder22.id)
Review.create!(content: "It was a pleasure to work with Pascaline",
rating: 5,
user_id: coder22.id)
Review.create!(content: "She has great expertise in analyzing, discussing and transforming the customer experience for our large public and private accounts clients.",
rating: 5,
user_id: coder22.id)

### COMPANIES ##############################################################################################################################################################################
puts "Creating companies....."

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t1.6435-9/88237179_487104992167597_8276528710992003072_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=G4J7st7kbaYAX8x2-Pj&_nc_ht=scontent-bru2-1.xx&oh=00_AfCTFAd9_N3Ev75YDXIBiZ9vQDnl92gky3BMPTkUdOEp1Q&oe=63B6B173")
company1 = User.new(first_name: "Buddy",
                  last_name: "Buddy",
                  username: "buddybuddy.brussels",
                  password: "123456",
                  email: "buddy@gmail.com",
                  description: "God Master Coder, Full Stack Developper, I don't like front-end and I make funny jokes.",
                  experience: "Ruby on Rails Teacher @Le Wagon",
                  language: "HTML, CSS, JavaScript, C++, Java, Rails, Ruby",
                  availability: "ASAP",
                  role: "Company",
                  years_of_experience: 1,
                  about_us: "Founded in January 2020, BUDDY BUDDY is Europe's first nut butter café & atelier. We
                            began experimenting and making our own nut butters at home when we decided to transition
                            towards a plant-based lifestyle. By taking control of the ingredients, quantities, and
                            roasting process, we realised we could craft something special. We started sharing them
                            with our buddies, and that's how our family business started.")
                  company1.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company1.save

file = URI.open("https://images-workbench.99static.com/FudNiZXsxaORzpSvZvHDIzFG8pU=/http://s3.amazonaws.com/projects-files/130/13004/1300459/04fa5661-bbfc-4620-b9ca-f1c9ce629355.jpg")
company2 = User.new(first_name: "Card",
                  last_name: "Castle",
                  username: "cardcastle.belgium",
                  password: "123456",
                  email: "card@gmail.com",
                  description: "God Master Coder, Full Stack Developper, I don't like front-end and I make funny jokes.",
                  experience: "Ruby on Rails Teacher @Le Wagon",
                  language: "HTML, CSS, JavaScript, C++, Java, Rails, Ruby",
                  availability: "ASAP",
                  role: "Company",
                  years_of_experience: 1,
                  about_us: "We're a team of Magic players and Software Engineers bringing you CardCastle from our
                            home in Canberra, Australia. We're passionate about providing MTG players around the world
                            with the tools they need to stay organised and play better.")
                company2.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company2.save

file = URI.open("https://images-workbench.99static.com/B5szrkizad45de7Ezbpu-2yctWo=/99designs-contests-attachments/50/50529/attachment_50529948")
company3 = User.new(first_name: "Antidote",
                  last_name: "Corp",
                  username: "antidode.belgium",
                  password: "123456",
                  email: "corp@gmail.com",
                  role: "Company",
                  availability: "A",
                  about_us: "Antidote is on a mission to transform the way that sponsors and patients connect in order
                            to accelerate medical research. At Antidote, we bring together talented people with
                            pharmaceutical, technology, business, and public health backgrounds to achieve an important
                            mission. Along the way, we manage to have some fun, too.")
                company3.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company3.save

file = URI.open("https://cdn.logojoy.com/wp-content/uploads/2018/05/01104612/1266.png")
company4 = User.new(first_name: "Ebkar",
                  last_name: "Studios",
                  username: "ebkar.studios",
                  password: "123456",
                  email: "ebkar@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "Ebkar Technology and Management Solutions helping organizations reach their goals and
                            achieve greater effectiveness through a wide range of high quality services including
                            consultancy, training, management software implementation, data networking and buildings
                            security solutions. Our mission is to create value propositions for our clients and commit
                            to effective implementation and help them to turn their current business management goals
                            into tangible results.")
                company4.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company4.save

file = URI.open("https://images-workbench.99static.com/NWF2et-ZbSTPmEelXIaLA5VFndw=/http://s3.amazonaws.com/projects-files/45/4501/450142/5d7907e1-fcb7-4c72-ba3f-283f089053d5.jpg")
company5 = User.new(first_name: "Neuro",
                  last_name: "Muscular",
                  username: "neuro.belgium",
                  password: "123456",
                  email: "neuro@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "Neuro Muscular is a clinical-stage biotech company founded with a focus to deliver
                            life-transforming therapies for people living with neuromuscular diseases.
                            We have a unique translational muscle electrophysiology platform leveraging in-depth
                            know-how of muscle physiology and muscular disorders for discovering and developing
                            first-in-class therapeutics in neuromuscular diseases with a significant unmet medical
                            need.")
                company5.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company5.save

file = URI.open("https://images-workbench.99static.com/BJKn5pgQua_rx1VQ-IYbCnYmxvI=/99designs-contests-attachments/68/68465/attachment_68465730")
company6 = User.new(first_name: "Good",
                  last_name: "Friends",
                  username: "friends.belgium",
                  password: "123456",
                  email: "good@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "Good Friend, Inc. knows there is beauty in diversity, there is strength in community,
                            there is magic in inclusion. We are a non-profit organization using social emotional tools
                            to establish a culture of acceptance in schools and beyond.")
                company6.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company6.save

file = URI.open("https://images-workbench.99static.com/0j3odZ1DQW0uPlsqTL7i1qr3q24=/99designs-contests-attachments/68/68622/attachment_68622669")
company7 = User.new(first_name: "Thayer",
                  last_name: "Coffee",
                  username: "coffee.belgium",
                  password: "123456",
                  email: "thayer@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "For 30 years, we have been trying to take small steps to limit our environmental impact.
                              We are strong believers that these small steps have a real impact. Today, we are
                              inviting you to join us to be better together and to reduce our carbon footprint,
                              one step at a time.")
                company7.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company7.save

file = URI.open("https://images-platform.99static.com//ygh0vIzvNClSZIH8Zo8JwCkjhDk=/652x17:1257x622/fit-in/590x590/99designs-contests-attachments/139/139716/attachment_139716325")
company8 = User.new(first_name: "Art",
                  last_name: "Sigma",
                  username: "art.belgium",
                  password: "123456",
                  email: "art@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "Art Sigma is a manufacturing company that produces and distributes digital cameras,
                              interchangeable lenses and photographic accessories.
                              Since our foundation in 1961, we have exclusively produced photography- and
                              video-related products. In other words, we are a company that focuses all its efforts
                              on creating tools for photography.")
                company8.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company8.save

file = URI.open("https://uploads.turbologo.com/uploads/design/hq_preview_image/3082940/draw_svg20210630-4871-qx4xel.svg.png")
company9 = User.new(first_name: "Basil",
                  last_name: "Finance Corp",
                  username: "basilfinanceBE",
                  password: "123456",
                  email: "BT@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "We are an integrated bank-insurance group, catering mainly for retail, private banking, SME and mid-cap clients.
                            Our core markets are Belgium, the Czech Republic, Slovakia, Hungary and Bulgaria.
                            We are present to a limited extent in several other countries.")
                company9.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company9.save

file = URI.open("https://uploads.turbologo.com/uploads/design/hq_preview_image/2112665/draw_svg20210630-4871-1oospxv.svg.png")
company10 = User.new(first_name: "BAD",
                  last_name: "DAY",
                  username: "BADday",
                  password: "123456",
                  email: "db@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "Bad Day Box is designed to send self-care to your friend’s doorstep and bring them some sunshine on a dark day.
                            Whether they’re angry, devastated, disappointed or sad, they’ll know that they are not alone.")
                company10.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company10.save

file = URI.open("https://uploads.turbologo.com/uploads/design/hq_preview_image/1374711/draw_svg20210804-20338-zpso5p.svg.png")
company11 = User.new(first_name: "Devil",
                  last_name: "Gaming",
                  username: "DevGam",
                  password: "123456",
                  email: "devilgam@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "Devil Gaming was founded by owners Ciaron and Darren following over 30 years experience working within the amusement gaming industry.
                            The pair have a fantastic working relationship and excellent understanding of the industry, enabling them to assist customers with with any gaming supply needs.")
                company11.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company11.save

file = URI.open("https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F299331609%2F197547754731%2F1%2Foriginal.20220608-115533?w=512&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C1024%2C1024&s=8da4d23156c1e12378c0b4a8a449ed38")
company12 = User.new(first_name: "Le",
                  last_name: "Wagon",
                  username: "WAGONvroomvroom",
                  password: "123456",
                  email: "wagon@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "Le Wagon is an international coding school specialised in immersive bootcamps. Le Wagon teaches people the skills they need to change their lives, kick-start their tech career or launch their own startup.
                            The school offers web development and data science courses in 44 cities in all continents.")
                company12.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company12.save

file = URI.open("https://uploads.turbologo.com/uploads/design/hq_preview_image/400533/draw_svg20210726-28848-e3s9av.svg.png")
company13 = User.new(first_name: "Bio",
                  last_name: "Line",
                  username: "UrbanJar",
                  password: "123456",
                  email: "urbanjard@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "Bio Line propose depuis 2017 un large éventail de solutions pour faciliter la gestion de vos espaces verts d'intérieurs.
                  Dans notre jardinerie urbaine, nous créons entre autre, pour les particuliers et les entreprises, des petits écosystèmes d'agrément qui reproduisent des paysages naturels invitant à la relaxation,
                  à la contemplation et qui ne nécessitent que très peu d'eau et d'entretien.")
                company13.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company13.save

file = URI.open("https://uploads.turbologo.com/uploads/design/hq_preview_image/556878/draw_svg20211030-1124-107dykx.svg.png")
company14 = User.new(first_name: "Lazyrit",
                  last_name: "Analytics",
                  username: "Lazlaz",
                  password: "123456",
                  email: "lazy@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "The Easiest Way to Bring Your Marketing Data Into Google Data Studio. Get Full Access to Lazyrit Analytics for Data Studio.")
                company14.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company14.save

file = URI.open("https://uploads.turbologo.com/uploads/design/hq_preview_image/74374/draw_svg20210702-6381-1d2s3y.svg.png")
company15 = User.new(first_name: "Robot",
                  last_name: "& Technics",
                  username: "RobotTech",
                  password: "123456",
                  email: "robot@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "Robot & Technics mission is to imagine and create exceptional robots that enrich people’s lives.
                            Building machines that can approximate the mobility, dexterity and agility of people and animals is a grand challenge.")
                company15.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company15.save

file = URI.open("https://scontent-bru2-1.xx.fbcdn.net/v/t1.6435-9/167900375_104540168409963_6374511983341844019_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=wFnCKGsRAlwAX8bO5Y3&_nc_ht=scontent-bru2-1.xx&oh=00_AfBN2uLHiJVJJRgHEX63blLO_Q0jiI3i7tIfOoFtEx60tQ&oe=63B963AF")
company16 = User.new(first_name: "Bulle",
                  last_name: "Terrarium",
                  username: "bulle.terrarium",
                  password: "123456",
                  email: "bulle@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "Bulle is an ecological decoration project by two creative and dynamic young Belgians, who during a time of lockdown discovered a real passion for creating small bubbles of nature (or terrarium) of art and life. Bulle is an ecological decoration project by two creative and dynamic young Belgians, who during a time of lockdown discovered a real passion for creating small bubbles of nature (or terrarium) of art and life. Bulle offers personalized creations, small green bubbles, which require very little maintenance thanks to the natural phenomenon of self-regulation. The plants you choose will evolve in a closed environment, which, thanks to light, will cause condensation to appear which will slide along the glass and which will rehydrate the basement of your terrarium. These will bring green and warmth to your interiors. Perfect for pleasing yourself and your loved ones.")
                company16.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company16.save

file = URI.open("https://cdn.logojoy.com/wp-content/uploads/2018/05/01123447/6113-768x591.png")
company17 = User.new(first_name: "Infinity",
                  last_name: "Productions",
                  username: "infinity.prod",
                  password: "123456",
                  email: "infinity@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "About us")
                company17.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company17.save

file = URI.open("https://images-workbench.99static.com/a9BfOJsZ6nc2WoBb-1fKzWZxLHM=/99designs-contests-attachments/130/130183/attachment_130183484")
company18 = User.new(first_name: "Kim",
                  last_name: "Nhung",
                  username: "kim.nhung",
                  password: "123456",
                  email: "kim.nhung@gmail.com",
                  availability: "A",
                  role: "Company",
                  about_us: "About us")
                company18.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
company18.save


### POSTS ##############################################################################################################################################################################
puts "Creating posts......"

post1 = Post.new(deadline: Date.today + 20,
                name: "FuzzyURLs",
                description: "You will be building your own URL Shortening service from scratch and host it live on a server. Preparing the Frontend
                Creating the Django Backend and setting up folders for Templates and Static files. Setting up views and urls to render the templates. Choosing our Database, setting up the models/schemas.
                Implementing URL Shortening.
                Implementing the mailing feature.
                Linking the new and the original URL.
                Hosting and Deployment.",
                company_id: company1.id,
                about_company: company1.about_us)
post1.save

post2 = Post.new(deadline: Date.today + 20,
                name: "Authentication in Node.js for a web app",
                description: "An end to end application which demonstrates how we can implement authentication in an application using Node.js and JSON Web Tokens and some good practices. Setting up Node.js and learn npm.
                Understanding how to create a web server and create some basic REST APIs.
                Introduction to Express.js framework and simplifying REST APIs.
                Setting up the frontend of our application and implement public/private APIs.
                Introduction to JWT and improving our authentication logic.
                Learn and implement some good practices",
                company_id: company2.id,
                about_company: company2.about_us)
post2.save

post3 = Post.new(deadline: Date.today + 10,
                name: "Student Result Management System",
                description: "You will be creating a full-stack website that uses the student information from a database as input and generates his/her result in PDF format as output which can then be downloaded and shared. Performing normalization of the database.
                Performing various database queries.
                Automating the addition and modification of student data.
                Implement an authentication system for admin.
                Generate the result in PDF format and download it.",
                company_id: company3.id,
                about_company: company3.about_us)
post3.save

post4 = Post.new(deadline: Date.today + 40,
                name: "YouTube Transcript Summarizer",
                description: "In this project, you will be a creating a Chrome Extension which will make a request to a backend REST API where it will perform NLP and respond with a summarized version of a YouTube transcript. Perform text summarization on obtained transcripts using HuggingFace transformers.
                Build a Flask backend REST API to expose the summarization service to the client.
                Develop a chrome extension which will utilize the backend API to display summarized text to the user.",
                company_id: company4.id,
                about_company: company4.about_us)
post4.save

post5 = Post.new(deadline: Date.today + 8,
                name: "Sorting Visualizer",
                description: "Create a web application using HTML, CSS, Javascript to visualize how various sorting algorithms work. This project’s functionality will be similar to this application. Creating the website's User Interface (UI) using HTML, CSS and enhancing it further using Bootstrap; without actually implementing any of the app's core features.
                Implementation of animations, effects and core functionalities (sorting algorithms) using JavaScript.
                Publish to GitHub and host your project live using Netlify.",
                company_id: company5.id,
                about_company: company5.about_us)
post5.save

post6 = Post.new(deadline: Date.today + 504,
                name: "UX Designer",
                description: "- Producing useful experience driven design solutions
                - Prototyping digital UX (XD, Sketch or similar)
                - Creating interaction design practices both web and mobile
                - Collaborating with multiple stakeholders, end users, other designers, developers, and management",
                company_id: company6.id,
                about_company: company6.about_us)
post6.save

post7 = Post.new(deadline: Date.today + 25,
                name: "Full-Stack Developer",
                description: "Our coffee brand is in new of its first e-commerce website ! We would love for a coder to work on it.",
                company_id: company7.id,
                about_company: company7.about_us)
post7.save

post8 = Post.new(deadline: Date.today + 10,
                name: "Visualising and forecasting stocks using Dash",
                description: "You will be creating a single-page web application using Dash (a python framework) and some machine learning models which will show company information (logo, registered name and description) and stock plots based on the stock code given by the user. Also the ML model will enable the user to get predicted stock prices for the date inputted by the user.",
                company_id: company8.id,
                about_company: company8.about_us)
post8.save

post9 = Post.new(deadline: Date.today + 60,
  name: "BackEnd Developer",
  description: "At Total Finance we are looking for senior back end developer speciliazed in Python to develop a new service for ours clients",
  company_id: company9.id,
  about_company: company9.about_us)
post9.save

post10 = Post.new(deadline: Date.today + 55,
  name: "Online Code Editor (React)",
  description: "Create an online code-editor for HTML, CSS, JS code snippets using only HTML, CSS and React. The code editor’s functionality will be similar to that of codpen.io.",
  company_id: company10.id,
  about_company: company10.about_us)
post10.save

post11 = Post.new(deadline: Date.today + 98,
  name: "C++, Go, Phython & Rails Developer",
  description: "You have at least 3 years experience of C# and the .NET framework, You can translate a model to a database structure in SQL
                You know how to push your work using GIT, Clean and efficient code is what makes your day",
  company_id: company11.id,
  about_company: company11.about_us)
post11.save

post12 = Post.new(deadline: Date.today + 23,
  name: "Events & Community Manager",
  description: "In order to support our expansion in Porto, we are now looking for a driven and hands-on Events and Community Manager who will join the
                Porto team to grow our unique brand and increase the number of students in the city. Organize, run and promote marketing events, using external and internal channels to showcase
                Le Wagon and generate/convert leads (eg. workshops, webinars, talks)",
  company_id: company12.id,
  about_company: company12.about_us)
post12.save

post13 = Post.new(deadline: Date.today + 85,
  name: "Sales & Admissions Associate",
  description: "Proactively contact all leads coming through our CRM from various acquisition channels (events, workshops, syllabus downloads, etc.) or send an information request via our contact form.
                Follow up with qualified leads to provide them with specific, relevant information about Bio Line programs and support them through the process of submitting their application.",
  company_id: company13.id,
  about_company: company13.about_us)
post13.save

post14 = Post.new(deadline: Date.today + 77,
  name: "Analytics and Revenue Strategist",
  description: "You support our customers on a daily basis by making recommendations and creating business value out of data.
                You therefore understand their business challenges, identify potential risks and provide solutions.",
  company_id: company14.id,
  about_company: company14.about_us)
post14.save

post15 = Post.new(deadline: Date.today + 198,
  name: "Senior Software Engineer",
  description: "Passionate about clean architecture and SOLID software design principles.Experience with the Linux operating system.
                Strong knowledge of Python and Java.",
  company_id: company15.id,
  about_company: company15.about_us)
post15.save

post16 = Post.new(deadline: Date.today + 11,
  name: "Codechef Notifier",
  description: "Create a browser extension that will automatically catch the unique ID of the submissions made to the problems on Codechef and check the verdict of the judge on that submission and notify the user through desktop notification once the verdict is available.",
  company_id: company17.id,
  about_company: company17.about_us)
post16.save

post17 = Post.new(deadline: Date.today + 11,
  name: "Multiplayer Game - Connect4",
  description: "You will build a multiplayer Connect4 game from scratch in Python using PyGame and sockets.",
  company_id: company18.id,
  about_company: company18.about_us)
post17.save


###  PROJECTS ##############################################################################################################################################################################
puts "Creating projects....."

project1 = Project.new(deadline: Date.today + 198,
                      name: "Amazon clone using React",
                      description: "You will be building an e-commerce application using React, which is inspired by Amazon. Create header/navigation bar to navigate between pages.
                      Create a home page to display products.
                      Create a login page for user login.
                      Add functionalities like basket, payment and authentication.",
                      company_id: company15.id,
                      coder_id: coder5.id,
                      about_company: company15.about_us,
                      status: "Approved")
project1.save

project2 = Project.new(deadline: Date.today + 18,
                      name: "JavaScript Codechef Notifier",
                      description: "Create a browser extension that will automatically catch the unique ID of the submissions made to the problems on Codechef and check the verdict of the judge on that submission and notify the user through desktop notification once the verdict is available",
                      company_id: company1.id,
                      coder_id: coder5.id,
                      about_company: company1.about_us,
                      status: "Approved")
project2.save

project3 = Project.new(deadline: Date.today + 20,
                      name: "OurApp - a social media web app in NodeJS",
                      description: "Build a full stack web application - OurApp (a social media app) using Node.JS, Express.Js, MongoDB, EJS (Template Engine for server side rendering) and deploying the application to Heroku. HTML, CSS, Bootstrap: Building the UI of the application
                      Serving HTML dynamically and use of EJS (template engine)
                      Familiarising the NodeJS environment
                      ExpressJS: Framework for creating servers.
                      MongoDB: Using NoSQL Database.
                      Socket.IO: Building live chatting feature
                      GitHub: To publish your project.
                      Heroku: Deploy the full stack application.",
                      company_id: company9.id,
                      coder_id: coder5.id,
                      about_company: company9.about_us,
                      status: "Approved")
project3.save

project4 = Project.new(deadline: Date.today + 20,
                      name: "My very first website",
                      description: "A simple web e--commerce app that shows all the possible paths a user can take from buying a terrarium to personnalizing the exact terrarium. The app will be a visualisation of our brand 'Bulle'.",
                      company_id: company16.id,
                      coder_id: coder3.id,
                      about_company: company16.about_us,
                      status: "Approved")
project4.save
