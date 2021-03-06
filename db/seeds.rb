# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'aws-sdk-s3'
s3 = Aws::S3::Resource.new(region: 'eu-west-3')

UserCompany.destroy_all
Assignment.destroy_all
OfferLearning.destroy_all
Purchase.destroy_all
Offer.destroy_all
Learning.destroy_all
Company.destroy_all
User.destroy_all

5.times do |_i|
  Company.create(
    name: Faker::Company.name
  )
end

# Get img password
obj = s3.bucket('zoryaprojetfinal').object('password.png')
obj.get(response_target: 'app/assets/images/password.png')
# Get img fishing
obj = s3.bucket('zoryaprojetfinal').object('fishing.png')
obj.get(response_target: 'app/assets/images/fishing.png')
# Get img BYOD (separation of uses )
obj = s3.bucket('zoryaprojetfinal').object('BYOD.png')
obj.get(response_target: 'app/assets/images/BYOD.png')
# Get img buisness trips (travel_security_learning)
obj = s3.bucket('zoryaprojetfinal').object('buisnessTrips.png')
obj.get(response_target: 'app/assets/images/buisnessTrips.png')
# Get img check_list
obj = s3.bucket('zoryaprojetfinal').object('checklist.png')
obj.get(response_target: 'app/assets/images/checklist.png')
# Get img GPDR
obj = s3.bucket('zoryaprojetfinal').object('GPDR.png')
obj.get(response_target: 'app/assets/images/GPDR.png')
# Get img social_engineering_learning
obj = s3.bucket('zoryaprojetfinal').object('socialengineering.png')
obj.get(response_target: 'app/assets/images/socialengineering.png')
# Get img physical_security_learning
obj = s3.bucket('zoryaprojetfinal').object('physicalprotection.png')
obj.get(response_target: 'app/assets/images/physicalprotection.png')
# Get img fingerprint_learning
obj = s3.bucket('zoryaprojetfinal').object('fingerprint.png')
obj.get(response_target: 'app/assets/images/fingerprint.png')
# Get img usb_device_learning
obj = s3.bucket('zoryaprojetfinal').object('usb.png')
obj.get(response_target: 'app/assets/images/usb.png')
# Get img ransomwares_learning
obj = s3.bucket('zoryaprojetfinal').object('ransomware.png')
obj.get(response_target: 'app/assets/images/ransomware.png')
# Get img incident_crisis_learning
obj = s3.bucket('zoryaprojetfinal').object('incidentcrisis.png')
obj.get(response_target: 'app/assets/images/incidentcrisis.png')

# DB for learnings
password_learning = Learning.create(
  name: 'Les mots de passe',
  content: "<h1 style='text-align: center'>Les mots de passe</h1>

  <div>
    <i>
      ???? Dans le cadre de ses fonctions de Directeur Financier, Nicolas va r??guli??rement consulter l?????tat des comptes de
      son entreprise sur le site Internet mis ?? disposition par l?????tablissement bancaire. Par simplicit??, il a choisi un
      mot de passe faible : ???Motdepasse123!???. Ce mot de passe a tr??s facilement ??t?? reconstitu?? lors d???une attaque
      utilisant un outil automatis?? : malheureusement le compte a ??t?? pirat?? et l???entreprise ?? perdu une 15 000 euros.
    </i>
  </div>
  <h2>1. Qu'est ce qu'un mot de passe ?</h2>
  <div>
    Le mot de passe est un outil d???authentification utilis?? notamment pour acc??der ?? un ??quipement num??rique et ?? ses
    donn??es. Pour bien prot??ger vos informations,
    choisissez des mots de passe difficiles ?? retrouver ?? l???aide d???outils automatis??s ou ??
    deviner par une tierce personne.
  </div>
  <h2>2. Comment bien le choisir ?</h2>

  <div>
    Choisissez des mots de passe compos??s si possible de 12 caract??res minimum de type diff??rent
    (majuscules, minuscules, chiffres, caract??res sp??ciaux) n???ayant aucun lien avec vous
    (nom, date de naissance???) et ne figurant pas dans le dictionnaire !
  </div>
  <div>
    Deux m??thodes simples peuvent vous aider ?? d??finir vos mots de passe :
    <ul>
      <li> La m??thode phon??tique : ?? J???ai achet?? 5 CDs pour cent euros cet apr??s-midi ?? :
        ght5CDs%E7am </li>
      <li> La m??thode des premi??res lettres : ?? Allons enfants de la patrie, le jour de gloire est
        arriv?? ?? : aE2lP,lJ2G??a!</li>
    </ul>
  </div>
  <h2>3. Quelques conseils suppl??mentaires</h2>

  <div>
    D??finissez un mot de passe unique pour chaque service sensible. Les mots de passe
    prot??geant des contenus sensibles (banque, messagerie professionnelle???) ne doivent
    jamais ??tre r??utilis??s pour d???autres services.
    Nous vous conseillons d???utiliser un gestionnaire de Mot de passe comme
    <a
      href='https://1password.com/fr/?utm_source=google&utm_medium=cpc&utm_campaign=11479538068&utm_content=542634779486&utm_term=1password&gclsrc=ds' target='_blank'>1Password</a>
    ou <a href='https://www.dashlane.com' target='_blank'>Dashlane</a>. Plus qu???un seul mot de passe ?? retenir, celui du gestionnaire. Il
    s???occupe
    ensuite de stocker vos mots de passe de mani??re s??curis??e.
  </div>

  <div>
    Changez son mot de passe r??guli??rement est une bonne pratique, tous les 3 mois semble ??tre une bonne dur??e.
  </div>

  <div>
    En entreprise :
    <ul>
      <li> Votre ??quipe s??curit?? doit d??finir une politique concernant les mots de passe, elle d??termine des r??gles de
        choix et
        de dimensionnement (longueur).</li>
      <li> L?????quipe IT doit elle, modifier toujours les ??l??ments d???authentification (identifiants, mots de passe) d??finis
        par
        d??faut sur les ??quipements (imprimantes, serveurs, box???).</li>
      <li> Les collaborateurs doivent ne doivent pas conserver les mots de passe dans des fichiers
        ou sur des post-it.</li>
      <li> Par ailleurs, il ne faut pas non plus stocker ses mot de passe dans les navigateurs, et encore plus lors de
        l???utilisation ou la connexion ?? un ordinateur public ou partag?? (salons, d??placements???).</li> </ul>
  </div>

  <div>

    <h3>???? Pour aller plus loin :</h3>
    <ul>
      <li><a href='https://www.economie.gouv.fr/particuliers/creer-mot-passe-securise' target='_blank'>Cr??er un mot de passe s??curis??</a>
      </li>
      <li><a
          href='https://www.ssi.gouv.fr/administration/precautions-elementaires/calculer-la-force-dun-mot-de-passe/' target='_blank'>Calculer
          la force d'un mot de passe</a></li>
    </ul>

  </div>",
  duration: 6
)
password_learning.photo.attach(io: File.open('app/assets/images/password.png'), filename: 'password.png')

phishing_learning = Learning.create(
  name: "L'hamme??onnage ou phishing",
  content: "<h1 style='text-align: center'>L'hamme??onnage ou phishing</h1>

  <h2>1. Qu'est ce que l'hamme??onnage ou le phishing ?</h2>

  <i>L???hame??onnage ou phishing est une technique utilis??e par des fraudeurs pour obtenir des renseignements personnels
    dans le but de perp??trer une usurpation d'identit??. La technique consiste ?? faire croire ?? la victime qu'elle
    s'adresse ?? un tiers de confiance ??? banque, administration, etc. ??? afin de lui soutirer des renseignements personnels
    : mot de passe, num??ro de carte de cr??dit, num??ro ou photocopie de la carte d'identit??, date de naissance, etc.</i>

  <h2>2. Trois conseils pour ??viter les attaques par hamme??onnage:</h2>

  Qu???il s???agisse d???une offensive de grande ampleur ou d???une campagne restreinte mais plus cible??e, toutes les attaques
  re??ussies de phishing et de ransomwares par e-mail provoquent des perturbations et des pre??judices. Ces attaques
  s???appuient sur des erreurs humaines. Autrement dit,
  pour qu???une cyberattaque aboutisse, quelqu???un doit tomber dans le pie??ge. <br>
  <br>
  Les cybercriminels emploient des techniques
  d???inge??nierie sociale ??? tanto??t simples, tanto??t extre??mement sophistique??es??? pour jouer avec les e??motions humaines et
  de??clencher une re??ponse. En tant que cibles, nous n???avons pas le droit a?? l???erreur, contrairement aux cybercriminels
  qui n???ont besoin de viser juste qu???une seule fois. <br>
  La bonne nouvelle est que les petits ruisseaux font les grandes
  rivie??res en matie??re de protection des donne??es, des appareils et des syste??mes, que ce soit au travail ou a?? la
  maison. Voici trois conseils simples et pratiques qui peuvent vous aider a?? identifier et a?? e??viter les e-mails
  malveillants.
  <div>
    <h3>Ne vous contentez pas de survoler les messages</h3>
  </div>
  <div>
    Nous recevons tellement d???e-mails que nous avons pris l???habitude de les survoler et de prendre des de??cisions
    ha??tives.
    En agissant de la sorte, nous prenons des risques inutiles, car nous passons a?? co??te?? d???indices qui pourraient
    e??veiller nos soupc??ons.<br>
    <br>
    Par exemple :<br>
    <b>Les adresses d???envoi, les URL et les liens inte??gre??s peuvent reve??tir une apparence trompeuse.</b> Ne vous laissez
    pas avoir (me??me si un nom, un logo ou d???autres informations vous paraissent familiers et su??rs). Sur votre
    ordinateur,
    passez le curseur de la souris sur ces e??le??ments et examinez les informations qui s???affichent (vous verrez souvent
    apparai??tre la ve??ritable destination d???une adresse Web en bas a?? gauche de la fene??tre du navigateur). Sur un
    appareil
    mobile, maintenez votre doigt appuye?? sur ces e??le??ments et examinez les informations qui s???affichent dans la fene??tre
    contextuelle.<br>
    Si ces informations ne correspondent a?? ce a?? quoi vous vous attendiez, redoublez de prudence. <br>

    <br>
    <b>Le contenu ou le sujet d???un message peut ne pas e??tre tout a?? fait juste ou pertinent.</b> Soyez vigilant si le ton
    d???une-mail envoye?? par un colle??gue, un ami ou un membre de votrefamille semble inapproprie?? ou ne lui ressemble pas.
    De
    me??me, remettez en question les factures ou les avis de livraison qui ne correspondent pas a?? votre historique de
    commandes. Lisez attentivement ce qui est e??crit, ne vous contentez pas de survoler les informations. <b>Les fautes
      d???orthographe et de grammaire peuvent indiquer que le message ne provient pas d???une source de confiance.</b> C???est
    particulie??rement vrai pour les messages qui semblent provenir d???une personne ou d???une entreprise re??pute??e et bien
    e??tablie.<br> <br>

    De manie??re ge??ne??rale, tout e-mail non sollicite??, c???est-a??-dire que vous ne vous attendiez pas a?? recevoir, doit
    faire
    l???objet d???un examen attentif. <b>Me??fiez-vous particulie??rement des e-mails qui semblent avoir e??te?? conc??us pour
      de??clencher une re??ponse e??motionnelle</b> (peur, surprise, excitation ou inquie??tude) et qui vous poussent a??
    re??pondre ou a?? agir d???une certaine manie??re (cliquer sur un lien, te??le??charger un fichier, confirmer/modifier un mot
    de passe, etc.).
  </div>

  <div>
    <h3>Prenez le temps de la re??flexion</h3>
  </div>
  <div>

    Lorsque vous avez fini de lire un e-mail, prenez un instant pour l???assimiler. Il est essentiel que vous
    preniez le temps d???y re??fle??chir, pluto??t que d???agir ha??tivement. Pour vous de??faire de l???habitude de survoler les
    messages et d???y re??pondre dans la pre??cipitation, posez-vous quelques questions si vous recevez un e-mail demandant
    une
    re??ponse ou une action susceptible de compromettre des donne??es sensibles, des appareils ou des syste??mes.

    Par exemple :
    <div>
      <ul>
        <li>Est-ce que j???attendais ce message ? ??? Si la re??ponse est non, posez-vous d???autres questions.</li>
        <li>Cet e-mail a-t-il du sens ? ??? Si le ton semble inapproprie?? ou si les informations fournies n???ont pas de sens,
          il peut tre??s bien s???agir d???une tentative de phishing.</li>
        <li>Me pousse-t-on a?? agir pre??cipitamment ou sous l???effet de la peur ? ??? Si c???est le cas, tirez la sonnette
          d???alarme.</li>
        <li>Cette offre est-elle trop belle pour e??tre vraie ? ??? Si vous n???arrivez pas a?? en croire vos yeux, il s???agit
          probablement d???une tentative de phishing.</li>
        <li>Et s???il s???agissait d???un e-mail de phishing ? ??? C???est une question qu???il convient de se poser, car elle peut
          vous aider a?? re??fle??chir aux conse??quences d???une e??ventuelle attaque de phishing. Risquez-vous de te??le??charger
          des malwares susceptibles d???infecter tous vos fichiers ? Risquez-vous de divulguer un mot de passe ou un nume??ro
          de carte bancaire a?? un cybercriminel ? Risquez-vous d???exposer les donne??es prive??es de vos colle??gues a?? un
          cyberescroc ?</li>
      </ul>
    </div>
  </div>

  <div>

    <h3>Ve??rifiez pluto??t deux fois qu???une</h3>
  </div>

  <div>

    Mieux vaut pre??venir que gue??rir. Gardez en permanence a?? l???esprit que les apparences sont trompeuses, surtout dans le
    cas d???escroqueries par phishing. Un message peut sembler le??gitime,
    sans qu???il n???en soit rien. Par exemple, un e-mail provenant d???une adresse informatique d???entreprise et vous demandant
    de
    te??le??charger un nouveau logiciel de se??curite?? peut donner l???impression
    d???e??tre fiable, car il parai??t re??el et pertinent. Mais votre de??partement informatique proce??derait-il vraiment de la
    sorte ?<br><br>
    Si un doute subsiste quant a?? la le??gitimite?? du message, quelques e??tapes supple??mentaires sont ne??cessaires pour
    ve??rifier qu???il s???agit d???une demande fiable avant de cliquer sur un lien, de te??le??charger un fichier ou de divulguer
    des donne??es sensibles. Voici quelques mesures a?? prendre pour ve??rifier la le??gitimite?? d???informations figurant dans
    un
    e-mail :
    <br>
    <div>
      <ul>
        <li> Pluto??t que de cliquer sur un lien, ouvrez votre navigateur Web, saisissez une URL connue et de confiance et
          acce??dez
          au site par vous-me??me.</li>
        <li> Pluto??t que de re??pondre a?? un e-mail ou d???appeler un nume??ro figurant dans le message, faites vos propres
          recherches.
          Utilisez une adresse e-mail ou un nume??ro de te??le??phone que vous e??tes en mesure de ve??rifier.</li>
        <li> Si vous avez rec??u un message douteux d???un colle??gue ou d???un ami, contactez-le via un autre canal (appel
          te??le??phonique ou SMS) pour ve??rifier qu???il vient bien de lui.</li>
        <li>Contactez votre e??quipe informatique pour obtenir des conseils (et lui signaler une menace de phishing
          potentiellement
          active sur le re??seau de votre entreprise).</li>
      </ul>
    </div>
  </div>

  Il ne faut qu???une minute pour ve??rifier un message suspect, qu???il ait e??te?? envoye?? par un colle??gue, un de??partement
  interne, un e??tablissement financier ou une autre source. En revanche, reme??dier aux conse??quences d???une interaction
  avec un e-mail de phishing ou contenant un ransomware peut prendre des jours ou des semaines (voire plus). Sans compter
  que les conse??quences sont parfois irre??versibles.<br>",
  duration: 8
)
phishing_learning.photo.attach(io: File.open('app/assets/images/fishing.png'), filename: 'fishing.png')

separation_of_uses_learning = Learning.create(
  name: 'La s??paration des usages',
  content: "<h1 style='text-align: center'>La s??paration des usages</h1>

  <div>
    <i>
      ???? Remy se connecte r??guli??rement sur son ordinateur personnel pour travailler. Sans qu???il s???en aper??oive il a ??t?? attaqu??. Gr??ce aux informations qu???il contenait, l???attaquant a pu p??n??trer le r??seau interne de son entreprise.Par cons??quent, des informations sensibles ont ??t?? vol??es puis revendues ?? la concurrence et leurs donn??es utilisateurs sont en ventes sur le darkweb.
    </i>
  </div>
  <h2>1. Qu'est ce que la s??paration des usages ?</h2>
  <div>
    Les usages et les mesures de s??curit?? sont diff??rents sur les ??quipements de communication (ordinateur, smartphone, etc.) personnels et professionnels.
    Le AVEC (Apportez Votre Equipement personnel de Communication) ou BYOD (Bring
    Your Own Device) est une pratique qui consiste, pour les collaborateurs, ?? utiliser leurs
    ??quipements personnels (ordinateur, smartphone, tablette, etc.) dans un contexte professionnel. Si cette solution est de plus en plus utilis??e aujourd???hui, elle pose des probl??mes
    en mati??re de s??curit?? des donn??es (vol ou perte des appareils, intrusions, manque de
    contr??le sur l???utilisation des appareils par les collaborateurs, fuite de donn??es lors du
    d??part du collaborateur).
  </div>
  <h2>2. Quelques recommandations</h2>
  <div>
    Dans ce contexte, il est recommand?? de s??parer vos usages personnels de vos usages
    professionnels :  <ul>
      <li> Ne faites pas suivre vos messages ??lectroniques professionnels sur des services de
        messagerie utilis??s ?? des fins personnelles. </li>
      <li> N???h??bergez pas de donn??es professionnelles sur vos ??quipements personnels (cl??
        USB, t??l??phone, etc.) ou sur des moyens personnels de stockage en ligne.</li>
        <li> De la m??me fa??on, ne connectez pas des supports amovibles personnels (cl??s
          USB, disques durs externes, etc.) aux ordinateurs de l???entreprise.</li>
    </ul>
  </div>

  <div>Si vous appliquez ces bonnes pratiques, vous limitez le risque que des personnes malveillantes volent des informations sensibles de votre entreprise apr??s avoir r??ussi ?? prendre le contr??le de votre machine personnelle ????.</div>",
  duration: 4
)
separation_of_uses_learning.photo.attach(io: File.open('app/assets/images/BYOD.png'), filename: 'BYOD.png')

travel_security_learning = Learning.create(
  name: 'Les d??placements professionnels',
  content: "<h1 style='text-align: center'>Les d??placements professionnels</h1>

  <div>
    <i>
      ???? Lors d???un s??minaire d???entreprise, L??a sympathise avec un voyageur pr??tendant avoir des connaissances en commun.
      Lorsque celui-ci lui demande s???il peut utiliser son ordinateur pour recharger son smartphone, L??a ne se m??fie pas.
      L???inconnu en a profit?? pour exfiltrer des donn??es confidentielles sur l???ordinateur de L??a.
    </i>
  </div>
  <h2>Introduction</h2>
  <div>
    L???emploi d???ordinateurs portables, smartphones ou de tablettes facilite les d??placements professionnels ainsi que le
    transport et l?????change de donn??es.
    Voyager avec ces appareils nomades fait cependant peser des menaces sur des informations sensibles dont le vol ou la
    perte auraient des cons??quences importantes sur les activit??s de l???organisation.
  </div>
  <h2>1. Avant de partir</h2>
  <div>
    <ul>
      <li> Utilisez uniquement du mat??riel (ordinateur, supports amovibles, t??l??phone) d??di?? au d??placement, et ne
        contenant que les donn??es n??cessaires. </li>
      <li> Sauvegardez ces donn??es, pour les retrouver en cas de perte.</li>
      <li> Si vous comptez profiter des trajets pour travailler, emportez un filtre de protection
        ??cran pour votre ordinateur <a
          href='https://www.amazon.fr/Kensington-%C3%A9cran-confidentialit%C3%A9-pour-MacBook/dp/B077TVSTMT/ref=sr_1_5?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2NGUYGZZ9MW4S&keywords=filtre+de+confidentialit%C3%A9&qid=1655154452&sprefix=filtre+de+confidential%2Caps%2C179&sr=8-5'
          target='_blank'>(comme ceux l??)</a>.</li>
      <li> Apposez un signe distinctif (comme une pastille de couleur ou un autocollant qui ne donne pas d???information sur
        votre travail ou m??tier afin d?????viter l???ing??nierie sociale) sur vos appareils pour
        vous assurer qu???il n???y a pas eu d?????change pendant le transport. </li>
      <li> V??rifiez que vos mots de passe ne sont pas pr??enregistr??s (notamment sur votre navigateur). </li>
    </ul>
  </div>
  <h2>2. Pendant le d??placement</h2>

  <ul>
    <li> Gardez vos appareils, supports et fichiers avec vous, pendant votre voyage comme
      pendant votre s??jour (ne les laissez pas dans un bureau ou un coffre d???h??tel). </li>
    <li> D??sactivez les fonctions Wi-Fi et Bluetooth de vos appareils. Si vous poss??dez un VPN d???entreprise, connectez
      votre ordinateur ?? internet via ce VPN.</li>
    <li> Retirez la carte SIM si vous ??tes contraint de vous s??parer de votre t??l??phone.</li>
    <li> Informez votre entreprise en cas d???inspection ou de saisie de votre mat??riel par des
      autorit??s ??trang??res.</li>
    <li> N???utilisez pas les ??quipements que l???on vous offre si vous ne pouvez pas les faire v??rifier par un service de
      s??curit?? de confiance. </li>
    <li> ??vitez de connecter vos ??quipements ?? des postes qui ne sont pas de confiance.
      Par exemple, si vous avez besoin d?????changer des documents lors d???une pr??sentation commerciale, utilisez une cl?? USB
      destin??e uniquement ?? cet usage et effacez
      ensuite les donn??es avec un logiciel d???effacement s??curis??. </li>
    <li> Refusez la connexion d?????quipements appartenant ?? des tiers ?? vos propres ??quipements (smartphone, cl?? USB,
      cigarette ??lectronique???)</li>
  </ul>

  <h2>3. Apr??s le d??placement</h2>
  <ul>
    <li> Effacez l???historique des appels et de navigation. </li>
    <li> Changez les mots de passe que vous avez utilis??s pendant le voyage.</li>
    <li> Faites analyser vos ??quipements, si vous le pouvez.</li>
    <li> N???utilisez jamais les cl??s USB qui peuvent vous avoir ??t?? offertes lors de vos d??placements (salons, r??unions,
      voyages???) : tr??s pris??es des attaquants, elles sont susceptibles de contenir des programmes malveillants.</li>
  </ul>
  <div>
    <h3>???? Pour aller plus loin :</h3>
    <ul>
      <li><a href='https://www.ssi.gouv.fr/uploads/IMG/pdf/passeport_voyageurs_anssi.pdf' target='_blank'>Passeport des
          voyageurs</a>
      </li>
    </ul>
  </div>",
  duration: 7
)
travel_security_learning.photo.attach(io: File.open('app/assets/images/buisnessTrips.png'),
                                      filename: 'buisnessTrips.png')

check_list_learning = Learning.create(
  name: 'Ma check-list s??curit??',
  content: "<h1 style='text-align: center'>Ma check-list s??curit??</h1>

  <div>
    <i>
      ??? Une check-list comme un aide m??moire pour am??liorer votre s??curit?? sur internet.
    </i>
  </div>
  <h2>Authentification</h2>
  <div>
    <ul>
      <li> Utilisez un mot de passe long, fort et unique pour chacun de vos comptes <a
          href='https://www.security.org/how-secure-is-my-password/' target='_blank'>(voir HowSecureIsMyPassword). </a>
      </li>
      <li> Utilisez un gestionnaire de mots de passe s??curis?? pour chiffrer, stocker et remplir les informations
        d'identification, comme <a href='https://www.dashlane.com/' target='_blank'>Dashlane</a> ou <a
          href='https://1password.com/fr/?utm_source=google&utm_medium=cpc&utm_campaign=11479538068&utm_content=542634779486&utm_term=1password&gclsrc=ds'
          target='_blank'>1Password</a>.</li>
      <li> Activez l'authentification ?? deux facteurs lorsqu'elle est disponible, et utilisez une <a
          href='https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=fr&gl=US'
          target='_blank'>d'authentification.</a> </li>
      <li> Lorsque vous activez l'authentification multi-factorielle, vous recevez g??n??ralement plusieurs codes que vous
        pouvez utiliser si votre m??thode 2FA est perdue, cass??e ou indisponible. Vous devez les conserver sur papier ou
        dans un endroit s??r sur disque (par exemple, dans un stockage hors ligne ou dans un fichier/disque chiffr??). </li>
      <li> Inscrivez-vous aux alertes de violation (avec <a href='https://monitor.firefox.com/' target='_blank'>Firefox
          Monitor</a> ou <a href='https://haveibeenpwned.com/' target='_blank'>HaveIBeenPwned</a>), et mettez ?? jour les
        mots de passe des comptes compromis.</li>
    </ul>
  </div>
  <h2>Navigation</h2>
  <div>
    <ul>
      <li> Utilisez un navigateur respectueux de la vie priv??e, <a href='https://brave.com/' target='_blank'>Brave</a> et
        <a href='https://www.mozilla.org/en-US/exp/firefox/new/' target='_blank'>Firefox</a> sont de bonnes options.
        R??glez votre recherche par d??faut sur un moteur non tra??ant, tel que <a href='https://duckduckgo.com/'
          target='_blank'>DuckDuckGo</a>.
      </li>
      <li> Ne saisissez aucune information sur un site Web non HTTPS (recherchez l'ic??ne du cadenas) ; envisagez
        d'utiliser <a href='https://www.eff.org/https-everywhere' target='_blank'>HTTP Everywhere</a> pour faciliter cette
        op??ration.</li>
      <li> Bloquez les trackers et les publicit??s invasives de tiers ?? l'aide d'une extension comme <a
          href='https://privacybadger.org/' target='_blank'>Privacy Badger</a> ou <a
          href='https://github.com/gorhill/uBlock' target='_blank'>uBlock</a>.</li>
      <li> Maintenez votre navigateur ?? jour, explorez les param??tres de confidentialit?? et supprimez les modules
        compl??mentaires/extensions inutiles.</li>
      <li> Envisagez d'utiliser la compartimentation pour s??parer les diff??rentes zones de votre navigation (travail,
        social, achats, etc.) afin de r??duire le suivi. Vous pouvez le faire avec <a
          href='https://support.mozilla.org/en-US/kb/containers' target='_blank'>Firefox Containers</a> , ou en utilisant
        des navigateurs ou des profils de navigateur distincts. </li>
      <li> N'autorisez pas votre navigateur ?? enregistrer vos mots de passe ou ?? remplir automatiquement vos donn??es
        personnelles (utilisez plut??t un gestionnaire de mots de passe) <a
          href='https://www.computerhope.com/issues/ch001377.html' target='_blank'>d??sactivez le remplissage automatique
          de votre navigateur</a>. </li>
      <li> Effacez r??guli??rement vos cookies, vos donn??es de session et votre cache.</li>
      <li> Ne vous connectez pas ?? votre navigateur, car cela peut relier d'autres donn??es ?? votre identit??.</li>
      <li> Testez votre navigateur ?? l'aide d'un outil comme Panopticlick pour vous assurer qu'il n'y a pas de probl??me
        majeur. BrowserLeaks et Am I Unique sont ??galement utiles pour explorer les informations sur les appareils que
        vous transmettez aux sites Web.</li>

    </ul>
  </div>
  <h2>T??l??phone</h2>

  <ul>
    <li> D??finissez un code PIN pour l'appareil, id??alement utilisez un mot de passe long (minimum 12 caract??res). Si
      cette option est prise en charge, configurez l'authentification par empreinte digitale ou FaceID. </li>
    <li> Chiffrez votre appareil, afin de prot??ger vos donn??es contre tout acc??s physique. Pour l'activer, pour Android :
      Param??tres --> S??curit?? --> Cryptage, ou pour iOS : Param??tres --> TouchID & Passcode --> Protection des donn??es.
    </li>
    <li> Maintenez votre appareil ?? jour. Les mises ?? jour du syst??me contiennent souvent des correctifs pour les
      vuln??rabilit??s de s??curit?? r??cemment d??couvertes. Vous devez installer les mises ?? jour lorsque vous y ??tes invit??.
    </li>
    <li> Maintenez votre appareil ?? jour. Les mises ?? jour du syst??me contiennent souvent des correctifs pour les
      vuln??rabilit??s de s??curit?? r??cemment d??couvertes. Vous devez installer les mises ?? jour lorsque vous y ??tes invit??.
    </li>
    <li> D??sactivez les fonctions de connectivit?? qui ne sont pas utilis??es et oubliez les r??seaux WiFi dont vous n'avez
      plus besoin.</li>
    <li> D??sactivez le suivi de la localisation. Par d??faut, Android et iOS enregistrent l'historique de votre
      localisation GPS. Vous pouvez le d??sactiver, pour Android : Maps --> Param??tres --> Historique de localisation, et
      iOS : Param??tres --> Confidentialit?? --> Services de localisation --> Services syst??me --> Lieux. Sachez que les
      applications tierces peuvent toujours enregistrer votre position et qu'il existe d'autres m??thodes pour d??terminer
      votre position que le GPS (tour de t??l??phonie mobile, WiFi, Bluetooth, etc.).</li>
    <li> Comprenez que les applications contiennent des traceurs qui collectent, stockent et parfois partagent vos
      donn??es. Pour Android, vous pouvez utiliser <a href='https://exodus-privacy.eu.org/en/page/what/'
        target='_blank'>Exodus</a> pour r??v??ler quels traceurs les applications install??es utilisent.</li>

  </ul>
  <div>
    <h2>Courriel</h2>
  </div>

  <div>
    Il est important de prot??ger votre compte de messagerie ??lectronique, car si un pirate y a acc??s, il pourra se faire
    passer pour vous et r??initialiser les mots de passe de vos autres comptes en ligne. L'une des plus grandes menaces
    pour la s??curit?? num??rique reste le phishing, qui peut parfois ??tre incroyablement convaincant. Restez donc vigilant
    et comprenez comment rep??rer les courriels malveillants, et ??vitez de communiquer publiquement votre adresse
    ??lectronique.
  </div>
  <ul>
    <li> Utilisez un mot de passe long, fort et unique et activez la fonction 2FA.</li>
    <li> Envisagez de passer ?? un fournisseur d'acc??s s??curis?? et chiffr??, tel que <a href='https://protonmail.com/'
        target='_blank'>ProtonMail</a>.</li>
    <li> Faites analyser vos ??quipements, si vous le pouvez.</li>
    <li> Utilisez un alias de courriel pour prot??ger votre adresse r??elle, avec un fournisseur tel que Anonaddy ou
      SimpleLogin. Cela vous permet de garder votre adresse r??elle priv??e, tout en faisant en sorte que tous les messages
      arrivent dans votre bo??te de r??ception principale.</li>
  </ul>
  <div>
    <h2>Messagerie s??curis??e</h2>
  </div>
  <ul>
    <li> Utilisez une application de messagerie s??curis??e qui est ?? la fois enti??rement open source et crypt??e de bout en bout avec une confidentialit?? parfaite par exemple, Signal.</li>
    <li> Assurez-vous que votre appareil et celui de votre ou vos destinataires sont s??curis??s (sans logiciels malveillants, crypt??s et dot??s d'un mot de passe fort).</li>
    <li> V??rifiez que votre destinataire est bien celui qu'il pr??tend ??tre, soit physiquement, en utilisant une application qui offre une v??rification des contacts.</li>
    <li> Signalez en SPAM au 33700 les num??ros malveillants qui tenterait un hame??onnage par SMS ou appel vocal.</li>
  </ul>
  <div>
    <h2>R??seau</h2>
  </div>
  <ul>
    <li> Utilisez un VPN r??put?? pour prot??ger votre IP et r??duire la quantit?? de donn??es de navigation que votre fournisseur d???acc??s ?? Internet peut enregistrer, mais comprenez leurs limites. Parmi les bonnes options figurent ProtonVPN et Mullvad, voir <a href='https://thatoneprivacysite.net/' target='_blank'>ThatonePrivacySite</a> pour des comparaisons d??taill??es</li>
    <li>Changez le mot de passe par d??faut de votre routeur. Toute personne connect??e ?? votre r??seau WiFi est en mesure d'??couter le trafic r??seau. Pour emp??cher les personnes que vous ne connaissez pas de se connecter, utilisez WPA2 et d??finissez un mot de passe fort</li>
  </ul>
  <div>
    <h3>???? Pour aller plus loin :</h3>
    <ul>
      <li><a href='https://github.com/Lissy93/personal-security-checklist' target='_blank'>La check_list parfaite (EN ????????)</a>
      </li>
    </ul>
  </div>",
  duration: 12
)
check_list_learning.photo.attach(io: File.open('app/assets/images/checklist.png'), filename: 'checklist.png')

gpdr_learning = Learning.create(
  name: 'Le RGPD',
  content: "<h1 style='text-align: center'>Le RGPD</h1>

  <div>
    <i>
      les r??gles et les pratiques europ??ennes, applicables en mati??re de protection des donn??es ?? caract??re personnel. Il
      concerne les entit??s publiques ou priv??es, ??tablies dans l???UE ou touchant des personnes dans l???UE.<br><br>
      Entreprises de toutes tailles, administrations et collectivit??s qui traitent des donn??es ?? caract??re personnel sont
      concern??es.
    </i>
  </div>
  <h2>1. Protection des donn??es et s??curit?? des donn??es : Quelle diff??rence ?</h2>
  <div>
    La protection des donn??es ?? caract??re personnel repose sur plusieurs piliers, en particulier : la transparence et la
    licit?? ; les droits des personnes physiques concern??es ; la s??curit?? des donn??es ; la limitation des finalit??s, la
    minimisation des donn??es ; la pertinence et la dur??e de conservation d???une donn??e.<br><br>

    La s??curit?? des donn??es constitue donc l???un des piliers essentiels de la protection des donn??es ?? caract??re personnel.
  </div>
  <h2>2. La s??curit?? des donn??es dans le RGPD</h2>
  <div>
    Parmi les exigences fix??es dans le r??glement, la n??cessit?? de garantir un niveau de s??curit?? adapt?? au risque
    num??rique.
    <br><br>
    Le r??glement affirme ainsi l???importance d???appr??cier et traiter les risques sur les personnes. Il exige notamment des
    entit??s concern??es, la mise en ??uvre de ??mesures techniques ou organisationnelles appropri??es??, qui peuvent
    notamment inclure le ??chiffrement des donn??es?? et des ??moyens permettant de garantir la confidentialit??,
    l???int??grit??, la disponibilit?? et la r??silience??.
  </div>

  <h2>3. Quels sont mes droits ?</h2>
  <div>Gr??ce au RGPD, n???importe quel citoyen europ??en peut maintenant agir contre toute entreprise ne respectant pas la
    r??glementation sur le traitement des donn??es personnelles, et ce m??me si l???entreprise a son si??ge social ??
    l?????tranger.<br>

  </div>
  <ul>
    <li> Le droit d???acc??s aux donn??es : les personnes concern??es ont le droit de demander aux responsables du traitement
      l???acc??s ?? ses donn??es personnelles, mais aussi aux diff??rentes informations comme la finalit?? du traitement.</li>
    <li> Le droit de rectification et le droit ?? l???effacement : les personnes concern??es peuvent demander la modification
      de leurs donn??es dans le cas o?? elles seraient inexactes. Elles peuvent m??me demander leur effacement sous r??serve
      de respecter plusieurs conditions (les donn??es ne sont plus n??cessaires, la personne concern??e retire son
      consentement, la personne concern??e fait barri??re au traitement, le traitement est illicite, les donn??es doivent
      ??tre effac??es pour des raisons l??gales, les donn??es sont collect??es dans le cadre d???une offre des services d???une
      soci??t?? d???information). Il faut pr??ciser que ce droit a des limites. Il ne s???applique pas lorsque le traitement est
      n??cessaire ?? l???exercice du droit ?? la libert?? d???expression et d???information ou indispensable ?? la constatation,
      l???exercice ou la d??fense de droits devant une juridiction.
    </li>
    <li> Droit ?? la portabilit?? : les personnes concern??es ont le droit de demander au responsable du traitement la
      transmission des donn??es qu???elles ont fournies dans un format couramment utilis?? et lisible par machine. Elles
      peuvent en outre transmettre ces donn??es ?? un autre responsable du traitement.
    </li>
    <li> Le droit d???opposition : les personnes concern??es ont la possibilit?? de s???opposer ?? un traitement, m??me si les
      donn??es sont destin??es ?? un profilage. Ce droit est surtout int??ressant pour les salari??s travaillant dans des
      entreprises dans l???usage de leur photo sur un trombinoscope par exemple.
    </li>

  </ul>
  <h3>???? Pour aller plus loin :</h3>
  <ul>
    <li><a href='https://www.cnil.fr/fr/reglement-europeen-protection-donnees' target='_blank'>Le RGPD</a>
    </li>
  </ul>",
  duration: 5
)
gpdr_learning.photo.attach(io: File.open('app/assets/images/GPDR.png'), filename: 'GPDR.png')

social_engineering_learning = Learning.create(
  name: "L'ing??ni??rie sociale",
  content: "<h1 style='text-align: center'>L'ing??nierie sociale</h1>

  <h2>1. Qu???est ce que l???ing??nierie sociale ?</h2>
  <div>
    L'ing??nierie sociale(social engineering en anglais) est, dans le contexte de la s??curit?? de l'information, une
    pratique de manipulation psychologique ?? des fins d'escroquerie. Les termes plus appropri??s ?? utiliser sont le
    piratage psychologique ou la fraude psychologique.

  </div>
  <h2>2. Comment vous en prot??ger ?</h2>
  <div>
    La quasi-totalit?? des attaques contient un certain type d'ing??nierie sociale. Les e-mails de ?? phishing ?? et
    escroqueries virales, par exemple, ont une forte connotation sociale. Les e-mails de phishing tentent de convaincre
    les utilisateurs qu'ils proviennent en r??alit?? de sources l??gitimes dans l'espoir de r??cup??rer ne serait-ce qu'une
    petite partie des donn??es personnelles ou d'entreprise. Les e-mails contenant des pi??ces jointes remplies de virus
    pr??tendent pourtant bien souvent provenir de contacts fiables ou proposent du contenu m??dia en apparence anodin tel
    que des vid??os ?? amusantes ?? ou ?? jolies ??.
    <br><br>
    Dans certains cas, les criminels utilisent des m??thodes d'ing??nierie sociale plus simples afin d'acc??der ?? un r??seau
    ou ?? un ordinateur. Par exemple, un pirate informatique peut fr??quenter l'espace de restauration d'un grand immeuble
    de bureaux et espionner par-dessus leur ??paule des utilisateurs travaillant sur leur tablette ou ordinateur portable.
    Il peut ainsi acc??der ?? un grand nombre de mots de passe et de noms d'utilisateur, sans envoyer d'e-mail ni m??me
    ??crire une seule ligne de code de virus. Certaines attaques, quant ?? elles, s'appuient sur une communication r??elle
    entre les criminels et les victimes. Dans ce type d'attaque, les pirates poussent l'utilisateur ?? leur accorder un
    acc??s au r??seau en pr??tendant qu'il s'agit d'un probl??me grave qui doit ??tre imm??diatement g??r??. Col??re, culpabilit??,
    tristesse, les criminels peuvent y recourir pour convaincre des utilisateurs que leur aide est n??cessaire et qu'ils ne
    peuvent pas la refuser. Pour terminer, il est important de se m??fier de l'ing??nierie sociale utilis??e comme moyen de
    cr??er une confusion. De nombreux employ??s et consommateurs ne r??alisent pas qu'avec seulement quelques informations
    (nom, date de naissance ou adresse), les pirates informatiques peuvent acc??der ?? plusieurs r??seaux en se faisant
    passer pour des utilisateurs l??gitimes face au personnel de l'assistance informatique. ?? partir de l??, il est facile
    de r??initialiser les mots de passe et d'obtenir un acc??s quasiment illimit??.<br><br>
    La protection contre les attaques de type ing??nierie sociale passe avant tout par la formation. Les utilisateurs
    doivent ??tre form??s afin de ne jamais cliquer sur des liens suspects et prot??ger syst??matiquement leurs identifiants
    de connexion, au bureau comme ?? la maison. Si les tactiques d'ing??nierie sociale aboutissent, le risque d'infection
    par des programmes malveillants est tout ?? fait probable.
  </div>

  <h2>3. Quelques exemples en vid??o</h2>
  <div>
    <iframe width='420' height='345' src='https://www.youtube.com/watch?v=xuYoMs6CLEw&t=1s'>
    </iframe> <iframe width='420' height='345' src='https://www.youtube.com/watch?v=s9jwOVGWWuk'>
    </iframe>
  </div>",
  duration: 11
)
social_engineering_learning.photo.attach(io: File.open('app/assets/images/socialengineering.png'),
                                         filename: 'socialengineering.png')

physical_security_learning = Learning.create(
  name: 'La s??curit?? physique',
  content: "<h1 style='text-align: center'>La s??curit?? physique</h1>

  <h2>1. Introduction</h2>
  <div>
    Une bonne politique de s??curit?? des syst??mes d???information ne se limite pas ?? la s??curit?? informatique. Il convient
    ??galement de prendre en compte la s??curit?? physique des installations.
    <br><br>
    En effet, quel serait l???int??r??t de contr??ler efficacement les flux de donn??es, les acc??s logiques au syst??me
    d???information si la s??curit?? physique des locaux n???est pas assur??e? Si le contr??le d???acc??s physique n???existe pas ou
    est d??faillant par exemple; une personne pourrait avoir acc??s ?? la salle serveur et voler ou d??truire des donn??es
    sensibles. Le m??me niveau de protection dans la s??curit?? informatique doit ??tre mis en place dans la s??curit??
    physique.
    <br><br>
    S??curit?? logique et s??curit?? physique ne sont pas dissociables et doivent converger vers un seul but : la s??curit??
    optimum du syst??me d???information.

  </div>
  <h2>2. Qu???entend-on par s??curit?? physique?</h2>
  <div>
    Outre le fait de mettre en oeuvre une gestion des acc??s physique (badge ou lecteur d???empreinte), il convient ??galement
    de pr??venir les intrusions ou de les d??tecter. un syst??me de vid??o surveille et d???alarme sont les bonnes pratiques ??
    suivre. Ce pendant le vol n???est pas le seul risque. Une entreprise peut perdre son syst??me d???information et ses
    donn??es ?? la suite d???un incendie. Il faut donc un syst??me complet de surveillance et mettre en place :
  </div>
  <ul>
    <li> Vid??o protection pour d??tecter les intrusions</li>
    <li> D??tection d???incendie avec d??clenchement automatique pour ??viter la destruction du mat??riel</li>
    <li> Presque ?? l???oppos??, la d??tection de fuite d???eau. Des capteurs peuvent ??tre coupl??s au syst??me de d??tection
      d???intrusion et de d??tection d???incendie.
    </li>
    <li> Lors du choix des locaux. Veiller ?? avoir des murs ??pais et des barreaux aux fen??tres pour les rez-de-chauss??e.
    </li>
    <li> Lorsque cela est possible et n??cessaire, un SAS de contr??le d???acc??s
    </li>
  </ul>


  <div>
    Bien que votre soci??t?? mette en ??uvre des barri??res et politiques de s??curit?? physique, votre contribution est
    essentielle.
    <br><br>
    Assurez-vous de conna??tre et suivre les politiques de votre soci??t?? en mati??re de s??curit??.
    <br><br>
    Par exemple, effacez votre tableau blanc et prot??gez vos donn??es confidentielles. N'oubliez pas de veiller ?? la
    confidentialit?? des conversations priv??es (soyez toujours conscient des alentours).
  </div>",
  duration: 6
)
physical_security_learning.photo.attach(io: File.open('app/assets/images/physicalprotection.png'),
                                        filename: 'physicalprotection.png')

fingerprint_learning = Learning.create(
  name: 'Mon empreinte num??rique',
  content: "<h1 style='text-align: center'>Mon empreinte num??rique</h1>

  <h2>1. Qu'est-ce qu'une empreinte ? </h2>
  <div>
    Vos empreintes sont toutes les donn??es et informations ?? votre sujet laiss??es par vous-m??me ou par d'autres sur la
    toile. Lorsqu'on parle d???empreintes, on pense d'abord aux empreintes volontairement laiss??es sur le net, c'est-??-dire
    ce que vous publiez.
  </div>
  <h2>2. 10 Conseils pour limiter ses traces !</h2>

  <ul>
    <li> R??fl??chissez avant de poster : Sur internet, tout le monde peut voir ce que vous mettez en ligne : infos, photos,
      opinions.</li>
    <li> Respectez les autres : Vous ??tes responsable de ce que vous publiez en ligne sur les r??seaux sociaux, blog,
      forums... Soyez respectueux, et r??fl??chissez avant de poster.</li>
    <li> Gardez en le plus pour vous : Donnez le minimum d???informations personnelles sur internet. Evitez de communiquer
      vos opinions politiques, votre religion, comme vous le feriez pour votre num??ro de t??l??phone.
    </li>
    <li> S??curisez vos comptes : Param??trez toujours vos profils sur les r??seaux sociaux afin de garder la ma??trise des
      informations que vous souhaitez partager. Pensez ?? activer la double authentification d??s que possible en
      privil??giant les applications d???authentifications ?? plusieurs facteurs (Comme Authenticator).
    </li>
    <li> Multipliez vos adresses mails : Utilisez des adresses ??lectroniques diff??rentes en fonction de vos activit??s :
      personnelles, professionnelles, associatives, ou sociales. Si une fuite de donn??e ?? lieu, vous limiterez l???impact.
    </li>
    <li> Limitez vos photographies et vid??os : La propagation d???image ou de vid??o est tr??s rapide sur le net. Les photos
      g??nantes ou compromettantes vous concernant ou vos proches doivent rester priv??e.</li>
    <li> Utilisez des pseudonymes : Seuls vos amis, et votre famille pourront savoir qu???il s???agit de vous. De pr??f??rence
      utilisez un pseudo qui ne veut rien dire pour vous, ?? l???aide d???un g??n??rateur par exemple.</li>
    <li> Vigilance sur les mots de passe : Un mot de passe doit ??tre confidentiel, unique, complexe et ne doit en aucun
      cas ??tre partag??. Vous pouvez utiliser un gestionnaire de mot de passe pour vous aider. Il ne faut pas stocker de
      mot de passe dans son navigateur, un pirate peut y avoir acc??s facilement.</li>
    <li> Coup de clean sur l???historique : Effacez r??guli??rement vos historiques de navigation et pensez ?? utiliser la
      navigation priv??e si vous utilisez un ordinateur qui n???est pas le votre.</li>
    <li> Contr??ler votre empreinte : r??guli??rement n???h??sitez pas ?? taper votre nom et pr??nom dans une barre de recherche
      de votre navigateur, cela vous permet de v??rifier quelles informations facilement accessible circulent ?? votre
      propos sur Internet.</li>

  </ul>

  <h2>3. Mettre ?? jour son syst??me</h2>

  <div>
    La mise ?? jour r??guli??re des logiciels et applications est cruciale afin de pallier tout risque de piratage et de
    tra??age. Un programme obsol??te s???av??re une cible facile pour les malwares (logiciels malveillants) et les intrusions.
    Un ordinateur prot??g?? et s??curis?? avec un anti-virus ?? jour, permet de r??duire les atteintes ?? la s??curit??.
  </div>",
  duration: 6
)
fingerprint_learning.photo.attach(io: File.open('app/assets/images/fingerprint.png'), filename: 'fingerprint.png')

usb_device_learning = Learning.create(
  name: 'Les appareils USB',
  content: "<h1 style='text-align: center'>Les appareils USB</h1>

  <h2>1. Introduction</h2>
  <div>
    USB est une technologie qui permet de connecter physiquement des appareils. Les fonctionnalit??s offertes par le p??riph??rique sont annonc??es avec des classes
    Par exemple, la classe Mass Storage indique que la cl?? USB sait stocker des documents. Un m??me p??riph??rique peut annoncer plusieurs classes : une imprimante peut scanner des documents et en imprimer.
  </div>
  <h2>2. Prot??gez-vous, vos donn??es ainsi que les syst??mes lorsque vous utilisez des appareils USB.</h2>
  <div>
    Les pe??riphe??riques USB font partie de notre quotidien, qu???il s???agisse de recharger nos appareils nume??riques, d???adaptateurs divers ou me??me des souris et claviers, tout se branche en USB. C???est simple, rapide et compatible avec tous les ordinateurs du marche??. Cette simplicite?? et cette diffusion des ports USB en font une cible privile??gie??e pour les attaques a?? l???encontre du syste??me d???information, et il est ne??cessaire de s???en pre??munir. Il est a?? la fois impossible et impe??ratif de s???en se??parer, une solution interme??diaire doit e??tre trouve??e.
  </div>

  <h2>Quelles sont les menaces ?</h2>
  <div>Les attaques contre les ports USB fonctionnent ?? deux niveaux : physique et logiciel. Les p??riph??riques USB ??tant directement reli??s, il est important de consid??rer la surface d???attaque cr??e par le lien physique et ??lectronique.</div>
  <h3>Attaques physiques (hardware)</h3>
  <div>Par ce terme, j???entends toutes les menaces qui s???attaquent a?? la couche physique du support USB : une attaque qui fonctionnerait me??me si le syste??me d???exploitation n???e??tait pas capable d???interagir avec un port USB. Il y a quelques temps il existait, qu???une seule attaque possible, l'USBKill :une cle?? USB dont le seul but est de de??truire l???ordinateur. Elle est compose??e de condensateurs qui se chargent gra??ce au courant transmis par l???ordinateur, et une fois une certaine tension atteinte, tout est renvoye?? sur la carte me??re, ce qui provoque une surtension et grille les composants.

    Cette cat??gorie d???attaques fonctionne me??me si la session de l???utilisateur est verrouille??e, et provoque des pertes massives de donne??es et de mat??riel.

    Ainsi, un appareil qui ressemble ?? une cl?? USB peut en fait ??tre un appareil malicieux.</div>
    <h3>Attaques logicielles (software)</h3>

  <div>
    J???inclus dans cette cat??gorie toutes les menaces qui peuvent corrompre le syste??me d???exploitation, que ce soit en injectant un malware ou en interceptant/ex-filtrant des donne??es.

  Afin de comprendre les diffe??rentes menaces logicielles, il est important de comprendre tout ce qu???il est possible de faire avec le protocole USB. La liste des classes est fournie sur le site officiel usb.org.

  Attention cependant, tout appareil USB peut ??tre un appareil malicieux, qu???il s???agisse d???un smartphone, d???une cigarette ??lectronique ou d???un chargeur par exemple. Restez vigilant et ne connectez pas d???appareil non reconnus sur vos appareils personnelles ou professionnels. N???acceptez pas les goodies USB dans les salons ou m??me ceux que vous pourriez trouver ???par hasard???.
  </div>
  <h3>???? Pour aller plus loin :</h3>
  </iframe> <iframe width='420' height='345' src='https://www.youtube.com/watch?v=PuEim4JhUXg&feature=emb_title'>
  </iframe>",
  duration: 8
)
usb_device_learning.photo.attach(io: File.open('app/assets/images/usb.png'), filename: 'usb.png')

ransomwares_learning = Learning.create(
  name: 'Les ran??ongiciels ou ransomwares',
  content: "<h1 style='text-align: center'>Les ran??ongiciels (ransomwares)</h1>

  <h2>1. Introduction</h2>
  <div>
    Pour commencer : Comprendre les ransomwares en 5 minutes<br><br>
    <iframe width='420' height='345' src='https://www.youtube.com/watch?v=G_lFrgwjw9E'></iframe>
  </div>

  <h2>2. D??finition.</h2>
  <div>
    Un ransomware est un type de programme malveillant con??u pour pirater les ordinateurs et forcer les victimes ?? payer
    une ran??on pour que leurs fichiers soient d??chiffr??s. Les pirates informatiques infectent votre ordinateur en vous
    demandant de t??l??charger la pi??ce jointe malveillante attach??e ?? un e-mail ou de vous rendre sur un site contenant un
    code, qui chiffre par la suite vos fichiers critiques ou vous refuse l???acc??s ?? votre ordinateur. Voici les deux
    principales formes de ce programme malveillant fr??quemment utilis?? de nos jours :
  </div>
  <ul>
    <li> <b>Le ransomware Locker.</b> Ce type de programme malveillant emp??che les utilisateurs d???utiliser les
      fonctionnalit??s de base de leur ordinateur. Par exemple, l???acc??s ?? votre ordinateur peut vous ??tre refus??, ou bien
      votre clavier et votre souris peuvent ??tre partiellement d??sactiv??s. Vous serez encore en mesure d???interagir avec la
      demande de ran??on afin de proc??der au paiement, mais votre ordinateur vous sera inutile pour toutes les autres
      fonctionnalit??s. La bonne nouvelle ? En r??gle g??n??rale, le programme malveillant Locker ??vite de chiffrer les
      fichiers critiques et vous bloque simplement l???acc??s, ce qui signifie que le risque de destruction totale des
      donn??es est moindre.</li>
    <li> <b>Le ransomware Crypto.</b> L???objectif du ransomware Crypto est de chiffrer vos donn??es critiques (par exemple
      documents, images et vid??os), sans toucher aux fonctionnalit??s plus basiques de votre ordinateur. Cela cr??e chez
      l???utilisateur un sentiment de panique, car vous pouvez voir vos fichiers, mais vous ne pouvez pas y acc??der. Les
      cr??ateurs de Crypto incluent souvent un compte ?? rebours ?? leur demande de ran??on : si vous ne payez dans les d??lais
      impartis, tous vos fichiers seront supprim??s. ??tant donn?? que de nombreux utilisateurs ne sont pas conscients de la
      n??cessit?? de faire plusieurs sauvegardes de fichiers dans le Cloud et sur des appareils de stockage physiques, le
      ransomware Crypto peut s???av??rer d??vastateur et pousser de nombreuses victimes ?? payer la ran??on dans l???espoir de
      r??cup??rer leurs documents num??riques.</li>
  </ul>

  <div>Le premier programme malveillant de ran??on moderne a vu le jour en 2005 avec Trojan.Gpcoder. En 2015, plus de 58%
    des PC des entreprises ont ??t?? attaqu??s par des programmes malveillants, et les attaques de CryptoLocker ont doubl??,
    (selon Kaspersky Lab). Le ransomware Locker repr??sente pr??s de 20% des ransomware. Selon Softpedia, le nombre
    d???attaques avec demande de ran??on a doubl?? en 2015, m??me si les organes de r??pression cherchent ?? stopper les serveurs
    et les cr??ateurs de codes de ran??on.</div>
  <div>Lorsqu'il s'agit de se prot??ger contre les ransomwares, il vaut mieux pr??venir que gu??rir. Pour y parvenir, il est
    essentiel de faire preuve de vigilance. Et d'utiliser le bon logiciel de s??curit??.</div>


  <div>
    Les analyses de vuln??rabilit?? peuvent ??galement vous aider ?? trouver des intrus dans votre syst??me. Tout d'abord, il
    est important de s'assurer que votre ordinateur n'est pas une cible id??ale pour les ransomwares. Les logiciels des
    appareils doivent toujours ??tre mis ?? jour afin de b??n??ficier des derniers correctifs de s??curit??.
  </div>
  <div>En outre, il est essentiel d'agir avec prudence, notamment en ce qui concerne les sites Web malveillants et les
    pi??ces jointes des emails. Cependant, m??me les meilleures mesures pr??ventives peuvent ??chouer, ce qui rend d'autant
    plus indispensable l'existence d'un plan d'urgence. Dans le cas des ransomwares, un plan d'urgence consiste ?? disposer
    d'une sauvegarde de vos donn??es.</div>

  <h3>???? Pour aller plus loin :</h3>
  <li><a href='https://www.ssi.gouv.fr/uploads/2020/09/anssi-guide-attaques_par_rancongiciels_tous_concernes-v1.0.pdf' target='_blank'>Le guide de l'ANSSI concernant les ran??ongiciels.</a>
  </li>",
  duration: 9
)
ransomwares_learning.photo.attach(io: File.open('app/assets/images/ransomware.png'), filename: 'ransomware.png')

incident_crisis_learning = Learning.create(
  name: 'G??rer un incident de s??curit??',
  content: "<h1 style='text-align: center'>G??rer un incident de s??curit??</h1>

  <h2>1. Que faire en cas d???incident ?</h2>
  <div>
    Ne c??dez pas ?? la panique, et ayez les bons r??flexes.
  </div>
  <div>
    En cas de comportement inhabituel de votre ordinateur, vous pouvez soup??onner une intrusion (impossibilit?? de se
    connecter, activit?? importante, connexions ou activit??s inhabituelles, services ouverts non autoris??s, fichiers
    cr????s, modifi??s ou supprim??s sans autorisation,???). Pr??venez votre hi??rarchie, ainsi que le responsable de la
    s??curit??, au t??l??phone ou de vive voix, car l???intrus peut-??tre capable de lire les courriels. Prenez ??galement
    contact avec un prestataire informatique qui vous aidera dans la restauration de votre syst??me ainsi que dans
    l???analyse de l???attaque ;
    D??connectez la machine du r??seau, pour stopper l???attaque. En revanche, maintenez l?? sous tension et ne la red??marrez
    pas, pour ne pas perdre d???informations utiles pour l???analyse de l???attaque. Faites faire une copie physique du
    disque. Faites rechercher les traces disponibles li??es ?? la compromission. Un ??quipement n?????tant jamais isol?? dans
    un syst??me d???information, des traces de sa compromission doivent exister dans d???autres ??quipements sur le r??seau
    (pare-feu, routeurs, outils de d??tection d???intrusion, etc.). D??posez une plainte aupr??s de la brigade de gendarmerie
    ou du service de police judiciaire comp??tent pour le si??ge de la soci??t??, de la Brigade d???enqu??tes sur les fraudes
    aux technologies de l???information (Paris et petite couronne), ou de la Direction g??n??rale de la s??curit?? int??rieure.
  </div>
  <h2>2. G??rer la communication </h2>
  <div>
    En cas d'incident, vous devez savoir qui contacter, par quel canal et comment proc??der en cr??ant le moins de
    frictions possible et en utilisant des ressources limit??es, afin d'??viter un cauchemar pour le service client et/ou
    des failles dans la communication. Il est pr??f??rable de commencer en interne par une ??quipe de r??ponse imm??diate,
    puis de progresser vers l'ext??rieur en s??lectionnant les messages pour le bon public.
  </div>
  <div>
    Bien que chaque organisation soit diff??rente, il s'av??re g??n??ralement judicieux de r??partir ces publics en cinq
    groupes distincts avec lesquels communiquer :
  </div>
  <ul>
    <li>??quipe d'astreinte principale : la premi??re ?? ??tre inform??e en cas de probl??me, presque d??s la survenue (en
      g??n??ral, par le biais d'outils de surveillance et d'alerte). Les ??quipes internes travaillent en coulisse pour
      d??tecter, contextualiser et r??soudre les incidents ?? l'aide d'outils de communication collaboratifs.</li>
    <li>??quipe de support de premi??re ligne : elle r??pond directement aux questions et fournit des mises ?? jour aux
      clients pendant l'incident. Il s'agit d'un r??le extr??mement important, c'est pourquoi cette ??quipe doit obtenir
      les bonnes informations ?? transmettre aux utilisateurs finaux.</li>
    <li>Managers et ??quipe de direction : l'??quipe principale doit communiquer avec ce groupe afin de savoir ce qui se
      passe, de conna??tre l'impact potentiel sur les deux groupes ci-dessous, et ??ventuellement d'obtenir une
      estimation de la dur??e du probl??me.</li>
    <li>Employ??s dans leur ensemble : les employ??s doivent ??tre tenus inform??s de l'??volution des services auxquels
      ils font confiance. Communiquer de mani??re proactive avec ces utilisateurs permet de r??duire le nombre de
      questions sur l'??tat d'avancement et de tickets de support informatique en double, et de se concentrer davantage
      sur la r??solution des probl??mes rencontr??s.</li>
    <li>Clients externes :??si l'incident touche des clients externes, il convient d'envoyer une communication pour
      leur expliquer le probl??me et ?? quel moment ils peuvent attendre une r??solution, ou au moins des mises ?? jour
      r??guli??res. Pour les probl??mes qui continuent d'affecter la capacit?? de vos clients ?? utiliser votre produit,
      nous recommandons de ne jamais attendre plus d'une heure sans envoyer de mise ?? jour. En outre, vous devez
      toujours indiquer la date de la prochaine mise ?? jour. S'il s'agit d'un incident suffisamment grave, en
      particulier un incident impliquant la s??curit?? ou la perte de donn??es, vous souhaiterez peut-??tre acc??l??rer les
      communications externes et faire appel aux autres ??quipes comp??tentes (juridique, RH, s??curit??, etc.)</li>
  </ul>
  <h2>3. Et apr??s ? </h2>

  <div>
    Apr??s l???incident : r??installez compl??tement le syst??me d???exploitation ?? partir d???une version saine, supprimez tous les
    services inutiles, restaurez les donn??es d???apr??s une copie de sauvegarde non compromise, et changez tous les mots de
    passe du syst??me d???information.
  </div>

  <h3>???? Pour aller plus loin :</h3>
  <li>
    <a href='https://www.ssi.gouv.fr/en-cas-dincident/' target='_blank'>Le guide de l'ANSSI concernant la gestion des
      incidents.</a>
    <a href='https://open.spotify.com/show/6uIlXulpYOsLLsijqjIWNw?go=1&sp_cid=30c51264-b7de-4b66-9c70-e29fbb34270c&utm_source=embed_player_p&utm_medium=desktop&nd=1' target='_blank'>Podcast : Pr??parer sa r??ponse ?? incident ?????? <i>Le Comptoir S??cu.</i></a>
  </li>",
  duration: 9
)
incident_crisis_learning.photo.attach(io: File.open('app/assets/images/incidentcrisis.png'),
                                      filename: 'incidentcrisis.png')

# DB for Offer
offer_light = Offer.create(
  name: 'Offre Light',
  description: 'Le minimum pour sensibiliser de vos collaborateurs. Elle comprend une formation par semestre.'
)

obj = s3.bucket('zoryaprojetfinal').object('light.png')
obj.get(response_target: 'app/assets/images/light.png')
offer_light.photo.attach(io: File.open('app/assets/images/light.png'), filename: 'light.png')

offer_essential = Offer.create(
  name: 'Offre Essential',
  description: 'Notre solution m??diane, pour une sensibilisation continue de vos collaborateurs. Elle comprend une formation par trimestre.'
)

obj = s3.bucket('zoryaprojetfinal').object('essential.png')
obj.get(response_target: 'app/assets/images/essential.png')
offer_essential.photo.attach(io: File.open('app/assets/images/essential.png'), filename: 'essential.png')

offer_excelcium = Offer.create(
  name: 'Offre Excelcium',
  description: 'Elle vous garantie une formation optimale de vos collaborateurs. Elle comprend une formation par mois.'
)

obj = s3.bucket('zoryaprojetfinal').object('excelcium.png')
obj.get(response_target: 'app/assets/images/excelcium.png')
offer_excelcium.photo.attach(io: File.open('app/assets/images/excelcium.png'), filename: 'excelcium.png')

2.times do |_i|
  Purchase.create(
    offer_id: Offer.all.sample.id,
    company_id: Company.all.sample.id
  )
end

# DB for offer_learning

OfferLearning.create(
  learning_id: password_learning.id,
  offer_id: offer_light.id
)

OfferLearning.create(
  learning_id: phishing_learning.id,
  offer_id: offer_light.id
)

OfferLearning.create(
  learning_id: password_learning.id,
  offer_id: offer_essential.id
)

OfferLearning.create(
  learning_id: phishing_learning.id,
  offer_id: offer_essential.id
)

OfferLearning.create(
  learning_id: separation_of_uses_learning.id,
  offer_id: offer_essential.id
)

OfferLearning.create(
  learning_id: travel_security_learning.id,
  offer_id: offer_essential.id
)

OfferLearning.create(
  learning_id: password_learning.id,
  offer_id: offer_excelcium.id
)

OfferLearning.create(
  learning_id: phishing_learning.id,
  offer_id: offer_excelcium.id
)

OfferLearning.create(
  learning_id: separation_of_uses_learning.id,
  offer_id: offer_excelcium.id
)

OfferLearning.create(
  learning_id: travel_security_learning.id,
  offer_id: offer_excelcium.id
)

OfferLearning.create(
  learning_id: check_list_learning.id,
  offer_id: offer_excelcium.id
)
OfferLearning.create(
  learning_id: gpdr_learning.id,
  offer_id: offer_excelcium.id
)
OfferLearning.create(
  learning_id: social_engineering_learning.id,
  offer_id: offer_excelcium.id
)
OfferLearning.create(
  learning_id: physical_security_learning.id,
  offer_id: offer_excelcium.id
)
OfferLearning.create(
  learning_id: incident_crisis_learning.id,
  offer_id: offer_excelcium.id
)
OfferLearning.create(
  learning_id: fingerprint_learning.id,
  offer_id: offer_excelcium.id
)
OfferLearning.create(
  learning_id: usb_device_learning.id,
  offer_id: offer_excelcium.id
)
OfferLearning.create(
  learning_id: ransomwares_learning.id,
  offer_id: offer_excelcium.id
)

# create a customer for tests
cust1 = User.create(first_name: 'Real', last_name: 'Customer', email: 'therealcustomer@yopmail.com', password: '71mdpc0nPLX#', password_confirmation: '71mdpc0nPLX#',
                    status: 1)
comp1 = Company.create(
  name: 'test engine'
)
UserCompany.create(user: cust1, company: comp1)
Purchase.create(company: comp1, offer: offer_essential)

admin1 = User.create(
  first_name: 'Admin',
  last_name: 'Admin',
  email: 'adminzorya@yopmail.com',
  password: '71mdp++c0nPLX#',
  password_confirmation: '71mdp++c0nPLX#',
  status: 2
)

zorya = Company.create(
  name: 'Zorya_Admin'
)

admin_user_company = UserCompany.create(
  user: admin1,
  company: zorya
)

purchase_zorya = Purchase.create(
  company: zorya,
  offer: offer_excelcium
)
