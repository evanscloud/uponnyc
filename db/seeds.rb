# Causes
Cause.create(id: 23, name: "Advocacy & Human Rights")
Cause.create(id: 30, name: "Animals")
Cause.create(id: 34, name: "Arts & Culture")
Cause.create(id: 38, name: "Board Development")
Cause.create(id: 22, name: "Children & Youth")
Cause.create(id: 25, name: "Community")
Cause.create(id: 37, name: "Computers & Technology")
Cause.create(id: 14, name: "Crisis Support")
Cause.create(id: 17, name: "Disabled")
Cause.create(id: 42, name: "Disaster Relief")
Cause.create(id: 15, name: "Education & Literacy")
Cause.create(id: 28, name: "Emergency & Safety")
Cause.create(id: 27, name: "Employment")
Cause.create(id: 13, name: "Environment")
Cause.create(id: 31, name: "Gay Lesbian Bi & Trans")
Cause.create(id: 11, name: "Health & Medicine")
Cause.create(id: 7, name: "Homeless & Housing")
Cause.create(id: 39, name: "Hunger")
Cause.create(id: 41, name: "Immigrants & Refugees")
Cause.create(id: 29, name: "International")
Cause.create(id: 5, name: "Justice & Legal")
Cause.create(id: 40, name: "Media & Broadcasting")
Cause.create(id: 6, name: "Politics")
Cause.create(id: 33, name: "Race & Ethnicity")
Cause.create(id: 36, name: "Religion")
Cause.create(id: 12, name: "Seniors")
Cause.create(id: 19, name: "Sports & Recreation")
Cause.create(id: 43, name: "Veterans & Military Families")
Cause.create(id: 3, name: "Women")

# # Test events
# Event.create(title: "Save Our Planet", organization: "People's Public", start: "2016-12-08 10:00:00", end: "2016-12-08 12:00:00", description: "Join us in changing the world.", address: "1 broadway New York, NY 10001", skills: "organizational", age: 16, url: "www.google.com", cause_id: 8)
# Event.create(title: "Water the Plants", organization: "Healthy Group", start: "2016-12-12 13:00:00", end: "2016-12-12 15:00:00", description: "Let's fix this damn thing.", address: "11 broadway New York, NY 10011", skills: "respect", age: 18, url: "www.amazon.com", cause_id: 14)
# Event.create(title: "Hackathonamania", organization: "Flatiron School", start: "2016-12-20 09:00:00", end: "2016-12-20 10:30:00", description: "Volunteer your time, build great products.", address: "11 broadway New York, NY 10011", skills: "coding skills", age: 21, url: "www.flatironschool.com", cause_id: 7)
# Event.create(title: "Guy Kawasaki Free Seminar", organization: "Flatiron School", start: "2016-12-29 09:00:00", end: "2016-12-29 12:30:00", description: "Art of the start seminar.", address: "11 broadway New York, NY 10011", skills: "l33t abilities", age: 10, url: "www.flatironschool.com", cause_id: 7)
# Event.create(title: "Guy Kawasaki Free Seminar 2", organization: "Flatiron School", start: "2016-12-30 10:30:00", end: "2016-12-30 12:00:00", description: "Art of the start seminar TWO.", address: "11 broadway New York, NY 10011", skills: "even more l33t abilities", age: 10, url: "www.flatironschool.com", cause_id: 7)
# Event.create(title: "Freedom Pups Galore!", organization: "Petco", start: "2016-11-30 09:30:00", end: "2016-11-30 11:30:00", description: "Come and cheer up a pup! Even adopt one!", address: "1 Petlandia Way, New York, NY 10001", skills: "Love, care, and awesomeness.", age: 5, url: "www.petco.com", cause_id: 2)
#
# # Faker seed events
# 250.times do
#   event = Event.create(
#     title: Faker::Book.title,
#     organization: Faker::Company.name,
#     start: Faker::Date.forward(7),
#     end: Faker::Date.forward(100),
#     description: Faker::Lorem.paragraph(2, false, 4),
#     address: Faker::Address.street_address,
#     skills: Faker::Hipster.word,
#     age: Faker::Number.between(1, 100),
#     url: Faker::Internet.url('google.com'),
#     cause_id: Faker::Number.between(1, 29)
#   )
# end
#
# # Faker seed comments
# 300.times do
#   Comment.create(
#     name: Faker::Name.name,
#     content: Faker::Hipster.sentence,
#     event_id: Faker::Number.between(1, 250)
#   )
# end
#
# 300.times do
#   Comment.create(
#     name: Faker::Name.name,
#     content: Faker::StarWars.quote,
#     event_id: Faker::Number.between(1, 250)
#   )
# end
