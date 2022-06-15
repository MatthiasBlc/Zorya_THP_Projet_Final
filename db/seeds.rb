# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Assignment.destroy_all
OfferLearning.destroy_all
Purchase.destroy_all
Offer.destroy_all
Learning.destroy_all
User.destroy_all
Company.destroy_all

learnings = ['Le phishing',
             'Les mots de passe',
             'La séparation des usages',
             'Déplacement professionnel',
             'Ma check-list sécurité',
             'Qu’est ce que le RGPD ?',
             'L’ingénierie sociale',
             'La sécurité physique',
             'Mon empreinte digitale',
             'Que faire en cas d’incident ?',
             'Les appareils USB',
             'Les ransomwares'
            ]

5.times do |i|
  company = Company.create(
    name: Faker::Company.name,
  )
end

10.times do |i|
  user = User.create(
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password',
    company: Company.all.sample
  )
end

12.times do |i|
  
  learning_selected = learnings.sample

  learning = Learning.create(
    name: "#{learning_selected}",
    content: Faker::Lorem.sentence(word_count: 30),
    duration: Faker::Number.number(digits: 1)
  )

  learnings.delete(learning_selected)

end

offer_light = Offer.create(
  name: 'Offre Light'
)

offer_essential = Offer.create(
  name: 'Offre Essential'
)

offer_excelcium = Offer.create(
  name: 'Offre Excelcium'
)

2.times do |i|
  purchase = Purchase.create(
    offer_id: Offer.all.sample.id,
    company_id: Company.all.sample.id
  )
end

5.times do |i|
  offer_learning = OfferLearning.create(
    learning_id: Learning.all.sample.id,
    offer_id: Offer.all.sample.id
  )
end

6.times do |i|
  assignment = Assignment.create(
    duration: Faker::Number.number(digits: 2),
    learning_id: Learning.all.sample.id,
    user_id: User.all.sample.id
  )
end
