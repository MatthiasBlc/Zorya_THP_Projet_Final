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

5.times do |i|
  company = Company.create(
    name: Faker::Company.name,
  )
end


password_learning = Learning.create(
  name: "Les mots de passe",
  content: ''
  duration: 4
)

phishing_learning = Learning.create(
  name: "L'hammeçonnage ou phishing'",
  content: "<h1 style="text-align: center">L'hammeçonnage ou phishing</h1>

  <h2>Qu'est ce que l'hommaeçonnage ou le phishing ?</h2>
  
  <i>L’hameçonnage ou phishing est une technique utilisée par des fraudeurs pour obtenir des renseignements personnels
    dans le but de perpétrer une usurpation d'identité. La technique consiste à faire croire à la victime qu'elle
    s'adresse à un tiers de confiance — banque, administration, etc. — afin de lui soutirer des renseignements personnels
    : mot de passe, numéro de carte de crédit, numéro ou photocopie de la carte d'identité, date de naissance, etc.</i>
  
  <h2>Trois conseils pour éviter les attaques par hammeçonnage :</h2>
  
  Qu’il s’agisse d’une offensive de grande ampleur ou d’une campagne restreinte mais plus ciblée, toutes les attaques
  réussies de phishing et de ransomwares par e-mail provoquent des perturbations et des préjudices. Ces attaques
  s’appuient sur des erreurs humaines. Autrement dit,
  pour qu’une cyberattaque aboutisse, quelqu’un doit tomber dans le piège. Les cybercriminels emploient des techniques
  d’ingénierie sociale — tantôt simples, tantôt extrêmement sophistiquées— pour jouer avec les émotions humaines et
  déclencher une réponse. En tant que cibles, nous n’avons pas le droit à l’erreur, contrairement aux cybercriminels
  qui n’ont besoin de viser juste qu’une seule fois. La bonne nouvelle est que les petits ruisseaux font les grandes
  rivières en matière de protection des données, des appareils et des systèmes, que ce soit au travail ou à la
  maison. Voici trois conseils simples et pratiques qui peuvent vous aider à identifier et à éviter les e-mails
  malveillants :
  
  <h3>1. Ne vous contentez pas de survoler les messages</h3>
  
  Nous recevons tellement d’e-mails que nous avons pris l’habitude de les survoler et de prendre des décisions hâtives.
  En agissant de la sorte, nous prenons des risques inutiles, car nous passons à côté d’indices qui pourraient
  éveiller nos soupçons.<br>
  <br>
  Par exemple :<br>
  <br>
  <b>Les adresses d’envoi, les URL et les liens intégrés peuvent revêtir une apparence trompeuse.</b> Ne vous laissez
  pas avoir (même si un nom, un logo ou d’autres informations vous paraissent familiers et sûrs). Sur votre ordinateur,
  passez le curseur de la souris sur ces éléments et examinez les informations qui s’affichent (vous verrez souvent
  apparaître la véritable destination d’une adresse Web en bas à gauche de la fenêtre du navigateur). Sur un appareil
  mobile, maintenez votre doigt appuyé sur ces éléments et examinez les informations qui s’affichent dans la fenêtre
  contextuelle.<br>
  <br>
  Si ces informations ne correspondent à ce à quoi vous vous attendiez, redoublez de prudence.
  <br>
  <b>Le contenu ou le sujet d’un message peut ne pas être tout à fait juste ou pertinent.</b> Soyez vigilant si le ton
  d’une-mail envoyé par un collègue, un ami ou un membre de votrefamille semble inapproprié ou ne lui ressemble pas. De
  même, remettez en question les factures ou les avis de livraison qui ne correspondent pas à votre historique de
  commandes. Lisez attentivement ce qui est écrit, ne vous contentez pas de survoler les informations. <b>Les fautes
    d’orthographe et de grammaire peuvent indiquer que le message ne provient pas d’une source de confiance.</b> C’est
  particulièrement vrai pour les messages qui semblent provenir d’une personne ou d’une entreprise réputée et bien
  établie.<br>
  <br>
  De manière générale, tout e-mail non sollicité, c’est-à-dire que vous ne vous attendiez pas à recevoir, doit faire
  l’objet d’un examen attentif. <b>Méfiez-vous particulièrement des e-mails qui semblent avoir été conçus pour
    déclencher une réponse émotionnelle</b> (peur, surprise, excitation ou inquiétude) et qui vous poussent à
  répondre ou à agir d’une certaine manière (cliquer sur un lien, télécharger un fichier, confirmer/modifier un mot
  de passe, etc.).<br>
  
  <h3>2. Prenez le temps de la réflexion</h3>
  
  Lorsque vous avez fini de lire un e-mail, prenez un instant pour l’assimiler. Il est essentiel que vous
  preniez le temps d’y réfléchir, plutôt que d’agir hâtivement. Pour vous défaire de l’habitude de survoler les
  messages et d’y répondre dans la précipitation, posez-vous quelques questions si vous recevez un e-mail demandant une
  réponse ou une action susceptible de compromettre des données sensibles, des appareils ou des systèmes.
  
  Par exemple :
  <div>
    <ul>
      <li>Est-ce que j’attendais ce message ? – Si la réponse est non, posez-vous d’autres questions.</li>
      <li>Cet e-mail a-t-il du sens ? – Si le ton semble inapproprié ou si les informations fournies n’ont pas de sens,
        il peut très bien s’agir d’une tentative de phishing.</li>
      <li>Me pousse-t-on à agir précipitamment ou sous l’effet de la peur ? – Si c’est le cas, tirez la sonnette
        d’alarme.</li>
      <li>Cette offre est-elle trop belle pour être vraie ? – Si vous n’arrivez pas à en croire vos yeux, il s’agit
        probablement d’une tentative de phishing.</li>
      <li>Et s’il s’agissait d’un e-mail de phishing ? – C’est une question qu’il convient de se poser, car elle peut
        vous aider à réfléchir aux conséquences d’une éventuelle attaque de phishing. Risquez-vous de télécharger
        des malwares susceptibles d’infecter tous vos fichiers ? Risquez-vous de divulguer un mot de passe ou un numéro
        de carte bancaire à un cybercriminel ? Risquez-vous d’exposer les données privées de vos collègues à un
        cyberescroc ?</li>
    </ul>
  </div>
  
  
  <h3>3. Vérifiez plutôt deux fois qu’une</h3>
  
  Mieux vaut prévenir que guérir. Gardez en permanence à l’esprit que les apparences sont trompeuses, surtout dans le
  cas d’escroqueries par phishing. Un message peut sembler légitime,
  sans qu’il n’en soit rien. Par exemple, un e-mail provenant d’une adresse informatique d’entreprise et vous demandant de
  télécharger un nouveau logiciel de sécurité peut donner l’impression
  d’être fiable, car il paraît réel et pertinent. Mais votre département informatique procéderait-il vraiment de la
  sorte ?<br>
  <br>
  Si un doute subsiste quant à la légitimité du message, quelques étapes supplémentaires sont nécessaires pour
  vérifier qu’il s’agit d’une demande fiable avant de cliquer sur un lien, de télécharger un fichier ou de divulguer
  des données sensibles. Voici quelques mesures à prendre pour vérifier la légitimité d’informations figurant dans un
  e-mail :<br>
  <br>
  <div>
    <ul>
    <li> Plutôt que de cliquer sur un lien, ouvrez votre navigateur Web, saisissez une URL connue et de confiance et
      accédez
      au site par vous-même.</li>
    <li> Plutôt que de répondre à un e-mail ou d’appeler un numéro figurant dans le message, faites vos propres
      recherches.
      Utilisez une adresse e-mail ou un numéro de téléphone que vous êtes en mesure de vérifier.</li>
    <li> Si vous avez reçu un message douteux d’un collègue ou d’un ami, contactez-le via un autre canal (appel
      téléphonique ou SMS) pour vérifier qu’il vient bien de lui.</li>
    <li>Contactez votre équipe informatique pour obtenir des conseils (et lui signaler une menace de phishing
      potentiellement
      active sur le réseau de votre entreprise).</li>
    </ul>
  </div>
  <br>
  Il ne faut qu’une minute pour vérifier un message suspect, qu’il ait été envoyé par un collègue, un département
  interne, un établissement financier ou une autre source. En revanche, remédier aux conséquences d’une interaction
  avec un e-mail de phishing ou contenant un ransomware peut prendre des jours ou des semaines (voire plus). Sans compter
  que les conséquences sont parfois irréversibles.<br>"
  duration: 4
)

separation_of_uses_learning = Learning.create(
  name: "La séparation des usages",
  content: ''
  duration: 4
)

travel_security_learning = Learning.create(
  name: "Les déplacements professionnels",
  content: ''
  duration: 4
)

check_list_learning = Learning.create(
  name: "Ma check-list sécurité",
  content: ''
  duration: 4
)

gpdr_learning = Learning.create(
  name: "Le RGPD",
  content: ''
  duration: 4
)

social_engineering_learning = Learning.create(
  name: "L'ingéniérie sociale'",
  content: ''
  duration: 4
)

physical_security_learning = Learning.create(
  name: "Les mots de passe",
  content: ''
  duration: 4
)

fingerprint_learning = Learning.create(
  name: "Mon empreinte digitale",
  content: ''
  duration: 4
)

incident_reply_learning = Learning.create(
  name: "Que faire en cas d'incident de sécurité ?",
  content: ''
  duration: 4
)

usb_device_learning = Learning.create(
  name: "Les appareils USB",
  content: ''
  duration: 4
)

ransomwares_learning = Learning.create(
  name: "Les rançongiciels ou ransomwares",
  content: ''
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


# 6.times do |i|
#   assignment = Assignment.create(
#     duration: Faker::Number.number(digits: 2),
#     learning_id: Learning.all.sample.id,
#     user_id: User.all.sample.id
#   )
# end