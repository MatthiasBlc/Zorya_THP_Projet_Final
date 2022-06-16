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


12.times do |i|
  
  learning_selected = learnings.sample

  learning = Learning.create(
    name: "#{learning_selected}",
    content: Faker::Lorem.sentence(word_count: 30),
    duration: Faker::Number.number(digits: 1)
  )

  learnings.delete(learning_selected)

end

password_learning = Learning.create(
  name: "Les mots de passe",
  content: '<i>Dans le cadre de ses fonctions de Directeur Financier, Nicolas va régulièrement consulter l’état des comptes de son entreprise sur le site Internet mis à disposition par l’établissement bancaire. Par simplicité, il a choisi un mot de passe faible : “Motdepasse123!”. Ce mot de passe a très facilement été reconstitué lors d’une attaque utilisant un outil automatisé : malheureusement le compte a été piraté et l’entreprise à perdu une 15 000 euros.</i>
  

  
  <h1>Le mot de passe est un outil d’authentification utilisé notamment pour accéder à un équipement numérique et à ses données. Pour bien protéger vos informations, choisissez des mots de passe difficiles à retrouver à l’aide d’outils automatisés ou à deviner par une tierce personne.</h1>
  
  <h3>Choisissez des mots de passe composés si possible de 12 caractères minimum de type différent (majuscules, minuscules, chiffres, caractères spéciaux) n’ayant aucun lien avec vous (nom, date de naissance…) et ne figurant pas dans le dictionnaire ! </h3>',
  duration: 4
)

offer_light = Offer.create(
  name: 'Offre Light',
  description: 'Le minimum pour sensibiliser de vos collaborateurs. Elle comprend une formation par semestre.'
)

offer_essential = Offer.create(
  name: 'Offre Essential',
  description: 'Notre solution médiane, pour une sensibilisation continue de vos collaborateurs. Elle comprend une formation par trimestre.'
)

offer_excelcium = Offer.create(
  name: 'Offre Excelcium',
  description: "Elle vous garantie une formation optimale de vos collaborateurs. Elle comprend une formation par mois."
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
    learning_id: Learning.all.sample.id,
    user_id: User.all.sample.id
  )
end