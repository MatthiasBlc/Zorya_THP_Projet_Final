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
  content: "<h1 style='text-align: center'>Les mots de passe</h1>

  <div>
    <i>
      💡 Dans le cadre de ses fonctions de Directeur Financier, Nicolas va régulièrement consulter l’état des comptes de
      son entreprise sur le site Internet mis à disposition par l’établissement bancaire. Par simplicité, il a choisi un
      mot de passe faible : “Motdepasse123!”. Ce mot de passe a très facilement été reconstitué lors d’une attaque
      utilisant un outil automatisé : malheureusement le compte a été piraté et l’entreprise à perdu une 15 000 euros.
    </i>
  </div>
  <h2>1. Qu'est ce qu'un mot de passe ?</h2>
  <div>
    Le mot de passe est un outil d’authentification utilisé notamment pour accéder à un équipement numérique et à ses
    données. Pour bien protéger vos informations,
    choisissez des mots de passe difficiles à retrouver à l’aide d’outils automatisés ou à
    deviner par une tierce personne.
  </div>
  <h2>2. Comment bien le choisir ?</h2>
  
  <div>
    Choisissez des mots de passe composés si possible de 12 caractères minimum de type différent
    (majuscules, minuscules, chiffres, caractères spéciaux) n’ayant aucun lien avec vous
    (nom, date de naissance…) et ne figurant pas dans le dictionnaire !
  </div>
  <div>
    Deux méthodes simples peuvent vous aider à définir vos mots de passe :
    <ul>
      <li> La méthode phonétique : « J’ai acheté 5 CDs pour cent euros cet après-midi » :
        ght5CDs%E7am </li>
      <li> La méthode des premières lettres : « Allons enfants de la patrie, le jour de gloire est
        arrivé » : aE2lP,lJ2Géa!</li>
    </ul>
  </div>
  <h2>3. Quelques conseils supplémentaires</h2>
  
  <div>
    Définissez un mot de passe unique pour chaque service sensible. Les mots de passe
    protégeant des contenus sensibles (banque, messagerie professionnelle…) ne doivent
    jamais être réutilisés pour d’autres services.
    Nous vous conseillons d’utiliser un gestionnaire de Mot de passe comme
    <a
      href='https://1password.com/fr/?utm_source=google&utm_medium=cpc&utm_campaign=11479538068&utm_content=542634779486&utm_term=1password&gclsrc=ds' target='_blank'>1Password</a>
    ou <a href='https://www.dashlane.com' target='_blank'>Dashlane</a>. Plus qu’un seul mot de passe à retenir, celui du gestionnaire. Il
    s’occupe
    ensuite de stocker vos mots de passe de manière sécurisée.
  </div>
  
  <div>
    Changez son mot de passe régulièrement est une bonne pratique, tous les 3 mois semble être une bonne durée.
  </div>
  
  <div>
    En entreprise :
    <ul>
      <li> Votre équipe sécurité doit définir une politique concernant les mots de passe, elle détermine des règles de
        choix et
        de dimensionnement (longueur).</li>
      <li> L’équipe IT doit elle, modifier toujours les éléments d’authentification (identifiants, mots de passe) définis
        par
        défaut sur les équipements (imprimantes, serveurs, box…).</li>
      <li> Les collaborateurs doivent ne doivent pas conserver les mots de passe dans des fichiers
        ou sur des post-it.</li>
      <li> Par ailleurs, il ne faut pas non plus stocker ses mot de passe dans les navigateurs, et encore plus lors de
        l’utilisation ou la connexion à un ordinateur public ou partagé (salons, déplacements…).</li> </ul>
  </div>
  
  <div>
  
    <h3>🧠 Pour aller plus loin :</h3>
    <ul>
      <li><a href='https://www.economie.gouv.fr/particuliers/creer-mot-passe-securise' target='_blank'>Créer un mot de passe sécurisé</a>
      </li>
      <li><a
          href='https://www.ssi.gouv.fr/administration/precautions-elementaires/calculer-la-force-dun-mot-de-passe/' target='_blank'>Calculer
          la force d'un mot de passe</a></li>
    </ul>
  
  </div>",
  duration: 4
)

phishing_learning = Learning.create(
  name: "L'hammeçonnage ou phishing",
  content: "<h1 style='text-align: center'>L'hammeçonnage ou phishing</h1>

  <h2>1. Qu'est ce que l'hammeçonnage ou le phishing ?</h2>
  
  <i>L’hameçonnage ou phishing est une technique utilisée par des fraudeurs pour obtenir des renseignements personnels
    dans le but de perpétrer une usurpation d'identité. La technique consiste à faire croire à la victime qu'elle
    s'adresse à un tiers de confiance — banque, administration, etc. — afin de lui soutirer des renseignements personnels
    : mot de passe, numéro de carte de crédit, numéro ou photocopie de la carte d'identité, date de naissance, etc.</i>
  
  <h2>2. Trois conseils pour éviter les attaques par hammeçonnage:</h2>
  
  Qu’il s’agisse d’une offensive de grande ampleur ou d’une campagne restreinte mais plus ciblée, toutes les attaques
  réussies de phishing et de ransomwares par e-mail provoquent des perturbations et des préjudices. Ces attaques
  s’appuient sur des erreurs humaines. Autrement dit,
  pour qu’une cyberattaque aboutisse, quelqu’un doit tomber dans le piège. <br>
  <br>
  Les cybercriminels emploient des techniques
  d’ingénierie sociale — tantôt simples, tantôt extrêmement sophistiquées— pour jouer avec les émotions humaines et
  déclencher une réponse. En tant que cibles, nous n’avons pas le droit à l’erreur, contrairement aux cybercriminels
  qui n’ont besoin de viser juste qu’une seule fois. <br>
  La bonne nouvelle est que les petits ruisseaux font les grandes
  rivières en matière de protection des données, des appareils et des systèmes, que ce soit au travail ou à la
  maison. Voici trois conseils simples et pratiques qui peuvent vous aider à identifier et à éviter les e-mails
  malveillants.
  <div>
    <h3>Ne vous contentez pas de survoler les messages</h3>
  </div>
  <div>
    Nous recevons tellement d’e-mails que nous avons pris l’habitude de les survoler et de prendre des décisions
    hâtives.
    En agissant de la sorte, nous prenons des risques inutiles, car nous passons à côté d’indices qui pourraient
    éveiller nos soupçons.<br>
    <br>
    Par exemple :<br>
    <b>Les adresses d’envoi, les URL et les liens intégrés peuvent revêtir une apparence trompeuse.</b> Ne vous laissez
    pas avoir (même si un nom, un logo ou d’autres informations vous paraissent familiers et sûrs). Sur votre
    ordinateur,
    passez le curseur de la souris sur ces éléments et examinez les informations qui s’affichent (vous verrez souvent
    apparaître la véritable destination d’une adresse Web en bas à gauche de la fenêtre du navigateur). Sur un
    appareil
    mobile, maintenez votre doigt appuyé sur ces éléments et examinez les informations qui s’affichent dans la fenêtre
    contextuelle.<br>
    Si ces informations ne correspondent à ce à quoi vous vous attendiez, redoublez de prudence. <br>
  
    <br>
    <b>Le contenu ou le sujet d’un message peut ne pas être tout à fait juste ou pertinent.</b> Soyez vigilant si le ton
    d’une-mail envoyé par un collègue, un ami ou un membre de votrefamille semble inapproprié ou ne lui ressemble pas.
    De
    même, remettez en question les factures ou les avis de livraison qui ne correspondent pas à votre historique de
    commandes. Lisez attentivement ce qui est écrit, ne vous contentez pas de survoler les informations. <b>Les fautes
      d’orthographe et de grammaire peuvent indiquer que le message ne provient pas d’une source de confiance.</b> C’est
    particulièrement vrai pour les messages qui semblent provenir d’une personne ou d’une entreprise réputée et bien
    établie.<br> <br>
  
    De manière générale, tout e-mail non sollicité, c’est-à-dire que vous ne vous attendiez pas à recevoir, doit
    faire
    l’objet d’un examen attentif. <b>Méfiez-vous particulièrement des e-mails qui semblent avoir été conçus pour
      déclencher une réponse émotionnelle</b> (peur, surprise, excitation ou inquiétude) et qui vous poussent à
    répondre ou à agir d’une certaine manière (cliquer sur un lien, télécharger un fichier, confirmer/modifier un mot
    de passe, etc.).
  </div>
  
  <div>
    <h3>Prenez le temps de la réflexion</h3>
  </div>
  <div>
  
    Lorsque vous avez fini de lire un e-mail, prenez un instant pour l’assimiler. Il est essentiel que vous
    preniez le temps d’y réfléchir, plutôt que d’agir hâtivement. Pour vous défaire de l’habitude de survoler les
    messages et d’y répondre dans la précipitation, posez-vous quelques questions si vous recevez un e-mail demandant
    une
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
  </div>
  
  <div>
  
    <h3>Vérifiez plutôt deux fois qu’une</h3>
  </div>
  
  <div>
  
    Mieux vaut prévenir que guérir. Gardez en permanence à l’esprit que les apparences sont trompeuses, surtout dans le
    cas d’escroqueries par phishing. Un message peut sembler légitime,
    sans qu’il n’en soit rien. Par exemple, un e-mail provenant d’une adresse informatique d’entreprise et vous demandant
    de
    télécharger un nouveau logiciel de sécurité peut donner l’impression
    d’être fiable, car il paraît réel et pertinent. Mais votre département informatique procéderait-il vraiment de la
    sorte ?<br><br>
    Si un doute subsiste quant à la légitimité du message, quelques étapes supplémentaires sont nécessaires pour
    vérifier qu’il s’agit d’une demande fiable avant de cliquer sur un lien, de télécharger un fichier ou de divulguer
    des données sensibles. Voici quelques mesures à prendre pour vérifier la légitimité d’informations figurant dans
    un
    e-mail :
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
  </div>
  
  Il ne faut qu’une minute pour vérifier un message suspect, qu’il ait été envoyé par un collègue, un département
  interne, un établissement financier ou une autre source. En revanche, remédier aux conséquences d’une interaction
  avec un e-mail de phishing ou contenant un ransomware peut prendre des jours ou des semaines (voire plus). Sans compter
  que les conséquences sont parfois irréversibles.<br>",
  duration: 4
)

separation_of_uses_learning = Learning.create(
  name: "La séparation des usages",
  content: "<h1 style='text-align: center'>La séparation des usages</h1>

  <div>
    <i>
      💡 Remy se connecte régulièrement sur son ordinateur personnel pour travailler. Sans qu’il s’en aperçoive il a été attaqué. Grâce aux informations qu’il contenait, l’attaquant a pu pénétrer le réseau interne de son entreprise.Par conséquent, des informations sensibles ont été volées puis revendues à la concurrence et leurs données utilisateurs sont en ventes sur le darkweb.
    </i>
  </div>
  <h2>1. Qu'est ce que la séparation des usages ?</h2>
  <div>
    Les usages et les mesures de sécurité sont différents sur les équipements de communication (ordinateur, smartphone, etc.) personnels et professionnels.
    Le AVEC (Apportez Votre Equipement personnel de Communication) ou BYOD (Bring
    Your Own Device) est une pratique qui consiste, pour les collaborateurs, à utiliser leurs
    équipements personnels (ordinateur, smartphone, tablette, etc.) dans un contexte professionnel. Si cette solution est de plus en plus utilisée aujourd’hui, elle pose des problèmes
    en matière de sécurité des données (vol ou perte des appareils, intrusions, manque de
    contrôle sur l’utilisation des appareils par les collaborateurs, fuite de données lors du
    départ du collaborateur).
  </div>
  <h2>2. Quelques recommandations</h2>
  <div>
    Dans ce contexte, il est recommandé de séparer vos usages personnels de vos usages
    professionnels :  <ul>
      <li> Ne faites pas suivre vos messages électroniques professionnels sur des services de
        messagerie utilisés à des fins personnelles. </li>
      <li> N’hébergez pas de données professionnelles sur vos équipements personnels (clé
        USB, téléphone, etc.) ou sur des moyens personnels de stockage en ligne.</li>
        <li> De la même façon, ne connectez pas des supports amovibles personnels (clés
          USB, disques durs externes, etc.) aux ordinateurs de l’entreprise.</li>
    </ul>
  </div>

  <div>Si vous appliquez ces bonnes pratiques, vous limitez le risque que des personnes malveillantes volent des informations sensibles de votre entreprise après avoir réussi à prendre le contrôle de votre machine personnelle 💪.</div>",
  duration: 4
)

travel_security_learning = Learning.create(
  name: "Les déplacements professionnels",
  content: "<h1 style='text-align: center'>Les déplacements professionnels</h1>

  <div>
    <i>
      💡 Lors d’un séminaire d’entreprise, Léa sympathise avec un voyageur prétendant avoir des connaissances en commun.
      Lorsque celui-ci lui demande s’il peut utiliser son ordinateur pour recharger son smartphone, Léa ne se méfie pas.
      L’inconnu en a profité pour exfiltrer des données confidentielles sur l’ordinateur de Léa.
    </i>
  </div>
  <h2>Introduction</h2>
  <div>
    L’emploi d’ordinateurs portables, smartphones ou de tablettes facilite les déplacements professionnels ainsi que le
    transport et l’échange de données.
    Voyager avec ces appareils nomades fait cependant peser des menaces sur des informations sensibles dont le vol ou la
    perte auraient des conséquences importantes sur les activités de l’organisation.
  </div>
  <h2>1. Avant de partir</h2>
  <div>
    <ul>
      <li> Utilisez uniquement du matériel (ordinateur, supports amovibles, téléphone) dédié au déplacement, et ne
        contenant que les données nécessaires. </li>
      <li> Sauvegardez ces données, pour les retrouver en cas de perte.</li>
      <li> Si vous comptez profiter des trajets pour travailler, emportez un filtre de protection
        écran pour votre ordinateur <a
          href='https://www.amazon.fr/Kensington-%C3%A9cran-confidentialit%C3%A9-pour-MacBook/dp/B077TVSTMT/ref=sr_1_5?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2NGUYGZZ9MW4S&keywords=filtre+de+confidentialit%C3%A9&qid=1655154452&sprefix=filtre+de+confidential%2Caps%2C179&sr=8-5'
          target='_blank'>(comme ceux là)</a>.</li>
      <li> Apposez un signe distinctif (comme une pastille de couleur ou un autocollant qui ne donne pas d’information sur
        votre travail ou métier afin d’éviter l’ingénierie sociale) sur vos appareils pour
        vous assurer qu’il n’y a pas eu d’échange pendant le transport. </li>
      <li> Vérifiez que vos mots de passe ne sont pas préenregistrés (notamment sur votre navigateur). </li>
    </ul>
  </div>
  <h2>2. Pendant le déplacement</h2>
  
  <ul>
    <li> Gardez vos appareils, supports et fichiers avec vous, pendant votre voyage comme
      pendant votre séjour (ne les laissez pas dans un bureau ou un coffre d’hôtel). </li>
    <li> Désactivez les fonctions Wi-Fi et Bluetooth de vos appareils. Si vous possédez un VPN d’entreprise, connectez
      votre ordinateur à internet via ce VPN.</li>
    <li> Retirez la carte SIM si vous êtes contraint de vous séparer de votre téléphone.</li>
    <li> Informez votre entreprise en cas d’inspection ou de saisie de votre matériel par des
      autorités étrangères.</li>
    <li> N’utilisez pas les équipements que l’on vous offre si vous ne pouvez pas les faire vérifier par un service de
      sécurité de confiance. </li>
    <li> Évitez de connecter vos équipements à des postes qui ne sont pas de confiance.
      Par exemple, si vous avez besoin d’échanger des documents lors d’une présentation commerciale, utilisez une clé USB
      destinée uniquement à cet usage et effacez
      ensuite les données avec un logiciel d’effacement sécurisé. </li>
    <li> Refusez la connexion d’équipements appartenant à des tiers à vos propres équipements (smartphone, clé USB,
      cigarette électronique…)</li>
  </ul>
  
  <h2>3. Après le déplacement</h2>
  <ul>
    <li> Effacez l’historique des appels et de navigation. </li>
    <li> Changez les mots de passe que vous avez utilisés pendant le voyage.</li>
    <li> Faites analyser vos équipements, si vous le pouvez.</li>
    <li> N’utilisez jamais les clés USB qui peuvent vous avoir été offertes lors de vos déplacements (salons, réunions,
      voyages…) : très prisées des attaquants, elles sont susceptibles de contenir des programmes malveillants.</li>
  </ul>
  <div>
    <h3>🧠 Pour aller plus loin :</h3>
    <ul>
      <li><a href='https://www.ssi.gouv.fr/uploads/IMG/pdf/passeport_voyageurs_anssi.pdf' target='_blank'>Passeport des
          voyageurs</a>
      </li>
    </ul>
  </div>",
  duration: 4
)

check_list_learning = Learning.create(
  name: "Ma check-list sécurité",
  content: '',
  duration: 4
)

gpdr_learning = Learning.create(
  name: "Le RGPD",
  content: '',
  duration: 4
)

social_engineering_learning = Learning.create(
  name: "L'ingéniérie sociale'",
  content: '',
  duration: 4
)

physical_security_learning = Learning.create(
  name: "Les mots de passe",
  content: '',
  duration: 4
)

fingerprint_learning = Learning.create(
  name: "Mon empreinte digitale",
  content: '',
  duration: 4
)

incident_reply_learning = Learning.create(
  name: "Que faire en cas d'incident de sécurité ?",
  content: '',
  duration: 4
)

usb_device_learning = Learning.create(
  name: "Les appareils USB",
  content: '',
  duration: 4
)

ransomwares_learning = Learning.create(
  name: "Les rançongiciels ou ransomwares",
  content: '',
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


20.times do |i|
  assignment = Assignment.create(
    duration: Faker::Number.number(digits: 2),
    learning_id: Learning.all.sample.id,
    user_id: User.all.sample.id
  )
end