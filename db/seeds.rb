# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserCompany.destroy_all
Assignment.destroy_all
OfferLearning.destroy_all
Purchase.destroy_all
Offer.destroy_all
Learning.destroy_all
Company.destroy_all
User.destroy_all

5.times do |_i|
  company = Company.create(
    name: Faker::Company.name
  )
end

# DB for learnings
password_learning = Learning.create(
  name: 'Les mots de passe',
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
  duration: 6
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
  duration: 8
)
separation_of_uses_learning = Learning.create(
  name: 'La séparation des usages',
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
  name: 'Les déplacements professionnels',
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
  duration: 7
)
check_list_learning = Learning.create(
  name: 'Ma check-list sécurité',
  content: "<h1 style='text-align: center'>Ma check-list sécurité</h1>

  <div>
    <i>
      ✅ Une check-list comme un aide mémoire pour améliorer votre sécurité sur internet.
    </i>
  </div>
  <h2>Authentification</h2>
  <div>
    <ul>
      <li> Utilisez un mot de passe long, fort et unique pour chacun de vos comptes <a
          href='https://www.security.org/how-secure-is-my-password/' target='_blank'>(voir HowSecureIsMyPassword). </a>
      </li>
      <li> Utilisez un gestionnaire de mots de passe sécurisé pour chiffrer, stocker et remplir les informations
        d'identification, comme <a href='https://www.dashlane.com/' target='_blank'>Dashlane</a> ou <a
          href='https://1password.com/fr/?utm_source=google&utm_medium=cpc&utm_campaign=11479538068&utm_content=542634779486&utm_term=1password&gclsrc=ds'
          target='_blank'>1Password</a>.</li>
      <li> Activez l'authentification à deux facteurs lorsqu'elle est disponible, et utilisez une <a
          href='https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=fr&gl=US'
          target='_blank'>d'authentification.</a> </li>
      <li> Lorsque vous activez l'authentification multi-factorielle, vous recevez généralement plusieurs codes que vous
        pouvez utiliser si votre méthode 2FA est perdue, cassée ou indisponible. Vous devez les conserver sur papier ou
        dans un endroit sûr sur disque (par exemple, dans un stockage hors ligne ou dans un fichier/disque chiffré). </li>
      <li> Inscrivez-vous aux alertes de violation (avec <a href='https://monitor.firefox.com/' target='_blank'>Firefox
          Monitor</a> ou <a href='https://haveibeenpwned.com/' target='_blank'>HaveIBeenPwned</a>), et mettez à jour les
        mots de passe des comptes compromis.</li>
    </ul>
  </div>
  <h2>Navigation</h2>
  <div>
    <ul>
      <li> Utilisez un navigateur respectueux de la vie privée, <a href='https://brave.com/' target='_blank'>Brave</a> et
        <a href='https://www.mozilla.org/en-US/exp/firefox/new/' target='_blank'>Firefox</a> sont de bonnes options.
        Réglez votre recherche par défaut sur un moteur non traçant, tel que <a href='https://duckduckgo.com/'
          target='_blank'>DuckDuckGo</a>.
      </li>
      <li> Ne saisissez aucune information sur un site Web non HTTPS (recherchez l'icône du cadenas) ; envisagez
        d'utiliser <a href='https://www.eff.org/https-everywhere' target='_blank'>HTTP Everywhere</a> pour faciliter cette
        opération.</li>
      <li> Bloquez les trackers et les publicités invasives de tiers à l'aide d'une extension comme <a
          href='https://privacybadger.org/' target='_blank'>Privacy Badger</a> ou <a
          href='https://github.com/gorhill/uBlock' target='_blank'>uBlock</a>.</li>
      <li> Maintenez votre navigateur à jour, explorez les paramètres de confidentialité et supprimez les modules
        complémentaires/extensions inutiles.</li>
      <li> Envisagez d'utiliser la compartimentation pour séparer les différentes zones de votre navigation (travail,
        social, achats, etc.) afin de réduire le suivi. Vous pouvez le faire avec <a
          href='https://support.mozilla.org/en-US/kb/containers' target='_blank'>Firefox Containers</a> , ou en utilisant
        des navigateurs ou des profils de navigateur distincts. </li>
      <li> N'autorisez pas votre navigateur à enregistrer vos mots de passe ou à remplir automatiquement vos données
        personnelles (utilisez plutôt un gestionnaire de mots de passe) <a
          href='https://www.computerhope.com/issues/ch001377.html' target='_blank'>désactivez le remplissage automatique
          de votre navigateur</a>. </li>
      <li> Effacez régulièrement vos cookies, vos données de session et votre cache.</li>
      <li> Ne vous connectez pas à votre navigateur, car cela peut relier d'autres données à votre identité.</li>
      <li> Testez votre navigateur à l'aide d'un outil comme Panopticlick pour vous assurer qu'il n'y a pas de problème
        majeur. BrowserLeaks et Am I Unique sont également utiles pour explorer les informations sur les appareils que
        vous transmettez aux sites Web.</li>

    </ul>
  </div>
  <h2>Téléphone</h2>

  <ul>
    <li> Définissez un code PIN pour l'appareil, idéalement utilisez un mot de passe long (minimum 12 caractères). Si
      cette option est prise en charge, configurez l'authentification par empreinte digitale ou FaceID. </li>
    <li> Chiffrez votre appareil, afin de protéger vos données contre tout accès physique. Pour l'activer, pour Android :
      Paramètres --> Sécurité --> Cryptage, ou pour iOS : Paramètres --> TouchID & Passcode --> Protection des données.
    </li>
    <li> Maintenez votre appareil à jour. Les mises à jour du système contiennent souvent des correctifs pour les
      vulnérabilités de sécurité récemment découvertes. Vous devez installer les mises à jour lorsque vous y êtes invité.
    </li>
    <li> Maintenez votre appareil à jour. Les mises à jour du système contiennent souvent des correctifs pour les
      vulnérabilités de sécurité récemment découvertes. Vous devez installer les mises à jour lorsque vous y êtes invité.
    </li>
    <li> Désactivez les fonctions de connectivité qui ne sont pas utilisées et oubliez les réseaux WiFi dont vous n'avez
      plus besoin.</li>
    <li> Désactivez le suivi de la localisation. Par défaut, Android et iOS enregistrent l'historique de votre
      localisation GPS. Vous pouvez le désactiver, pour Android : Maps --> Paramètres --> Historique de localisation, et
      iOS : Paramètres --> Confidentialité --> Services de localisation --> Services système --> Lieux. Sachez que les
      applications tierces peuvent toujours enregistrer votre position et qu'il existe d'autres méthodes pour déterminer
      votre position que le GPS (tour de téléphonie mobile, WiFi, Bluetooth, etc.).</li>
    <li> Comprenez que les applications contiennent des traceurs qui collectent, stockent et parfois partagent vos
      données. Pour Android, vous pouvez utiliser <a href='https://exodus-privacy.eu.org/en/page/what/'
        target='_blank'>Exodus</a> pour révéler quels traceurs les applications installées utilisent.</li>

  </ul>
  <div>
    <h2>Courriel</h2>
  </div>

  <div>
    Il est important de protéger votre compte de messagerie électronique, car si un pirate y a accès, il pourra se faire
    passer pour vous et réinitialiser les mots de passe de vos autres comptes en ligne. L'une des plus grandes menaces
    pour la sécurité numérique reste le phishing, qui peut parfois être incroyablement convaincant. Restez donc vigilant
    et comprenez comment repérer les courriels malveillants, et évitez de communiquer publiquement votre adresse
    électronique.
  </div>
  <ul>
    <li> Utilisez un mot de passe long, fort et unique et activez la fonction 2FA.</li>
    <li> Envisagez de passer à un fournisseur d'accès sécurisé et chiffré, tel que <a href='https://protonmail.com/'
        target='_blank'>ProtonMail</a>.</li>
    <li> Faites analyser vos équipements, si vous le pouvez.</li>
    <li> Utilisez un alias de courriel pour protéger votre adresse réelle, avec un fournisseur tel que Anonaddy ou
      SimpleLogin. Cela vous permet de garder votre adresse réelle privée, tout en faisant en sorte que tous les messages
      arrivent dans votre boîte de réception principale.</li>
  </ul>
  <div>
    <h2>Messagerie sécurisée</h2>
  </div>
  <ul>
    <li> Utilisez une application de messagerie sécurisée qui est à la fois entièrement open source et cryptée de bout en bout avec une confidentialité parfaite par exemple, Signal.</li>
    <li> Assurez-vous que votre appareil et celui de votre ou vos destinataires sont sécurisés (sans logiciels malveillants, cryptés et dotés d'un mot de passe fort).</li>
    <li> Vérifiez que votre destinataire est bien celui qu'il prétend être, soit physiquement, en utilisant une application qui offre une vérification des contacts.</li>
    <li> Signalez en SPAM au 33700 les numéros malveillants qui tenterait un hameçonnage par SMS ou appel vocal.</li>
  </ul>
  <div>
    <h2>Réseau</h2>
  </div>
  <ul>
    <li> Utilisez un VPN réputé pour protéger votre IP et réduire la quantité de données de navigation que votre fournisseur d’accès à Internet peut enregistrer, mais comprenez leurs limites. Parmi les bonnes options figurent ProtonVPN et Mullvad, voir <a href='https://thatoneprivacysite.net/' target='_blank'>ThatonePrivacySite</a> pour des comparaisons détaillées</li>
    <li>Changez le mot de passe par défaut de votre routeur. Toute personne connectée à votre réseau WiFi est en mesure d'écouter le trafic réseau. Pour empêcher les personnes que vous ne connaissez pas de se connecter, utilisez WPA2 et définissez un mot de passe fort</li>
  </ul>
  <div>
    <h3>🧠 Pour aller plus loin :</h3>
    <ul>
      <li><a href='https://github.com/Lissy93/personal-security-checklist' target='_blank'>La check_list parfaite (EN 🇬🇧)</a>
      </li>
    </ul>
  </div>",
  duration: 12
)
gpdr_learning = Learning.create(
  name: 'Le RGPD',
  content: "<h1 style='text-align: center'>Le RGPD</h1>

  <div>
    <i>
      les règles et les pratiques européennes, applicables en matière de protection des données à caractère personnel. Il
      concerne les entités publiques ou privées, établies dans l’UE ou touchant des personnes dans l’UE.<br><br>
      Entreprises de toutes tailles, administrations et collectivités qui traitent des données à caractère personnel sont
      concernées.
    </i>
  </div>
  <h2>1. Protection des données et sécurité des données : Quelle différence ?</h2>
  <div>
    La protection des données à caractère personnel repose sur plusieurs piliers, en particulier : la transparence et la
    licité ; les droits des personnes physiques concernées ; la sécurité des données ; la limitation des finalités, la
    minimisation des données ; la pertinence et la durée de conservation d’une donnée.<br><br>

    La sécurité des données constitue donc l’un des piliers essentiels de la protection des données à caractère personnel.
  </div>
  <h2>2. La sécurité des données dans le RGPD</h2>
  <div>
    Parmi les exigences fixées dans le règlement, la nécessité de garantir un niveau de sécurité adapté au risque
    numérique.
    <br><br>
    Le règlement affirme ainsi l’importance d’apprécier et traiter les risques sur les personnes. Il exige notamment des
    entités concernées, la mise en œuvre de «mesures techniques ou organisationnelles appropriées», qui peuvent
    notamment inclure le «chiffrement des données» et des «moyens permettant de garantir la confidentialité,
    l’intégrité, la disponibilité et la résilience».
  </div>

  <h2>3. Quels sont mes droits ?</h2>
  <div>Grâce au RGPD, n’importe quel citoyen européen peut maintenant agir contre toute entreprise ne respectant pas la
    règlementation sur le traitement des données personnelles, et ce même si l’entreprise a son siège social à
    l’étranger.<br>

  </div>
  <ul>
    <li> Le droit d’accès aux données : les personnes concernées ont le droit de demander aux responsables du traitement
      l’accès à ses données personnelles, mais aussi aux différentes informations comme la finalité du traitement.</li>
    <li> Le droit de rectification et le droit à l’effacement : les personnes concernées peuvent demander la modification
      de leurs données dans le cas où elles seraient inexactes. Elles peuvent même demander leur effacement sous réserve
      de respecter plusieurs conditions (les données ne sont plus nécessaires, la personne concernée retire son
      consentement, la personne concernée fait barrière au traitement, le traitement est illicite, les données doivent
      être effacées pour des raisons légales, les données sont collectées dans le cadre d’une offre des services d’une
      société d’information). Il faut préciser que ce droit a des limites. Il ne s’applique pas lorsque le traitement est
      nécessaire à l’exercice du droit à la liberté d’expression et d’information ou indispensable à la constatation,
      l’exercice ou la défense de droits devant une juridiction.
    </li>
    <li> Droit à la portabilité : les personnes concernées ont le droit de demander au responsable du traitement la
      transmission des données qu’elles ont fournies dans un format couramment utilisé et lisible par machine. Elles
      peuvent en outre transmettre ces données à un autre responsable du traitement.
    </li>
    <li> Le droit d’opposition : les personnes concernées ont la possibilité de s’opposer à un traitement, même si les
      données sont destinées à un profilage. Ce droit est surtout intéressant pour les salariés travaillant dans des
      entreprises dans l’usage de leur photo sur un trombinoscope par exemple.
    </li>

  </ul>
  <h3>🧠 Pour aller plus loin :</h3>
  <ul>
    <li><a href='https://www.cnil.fr/fr/reglement-europeen-protection-donnees' target='_blank'>Le RGPD</a>
    </li>
  </ul>",
  duration: 5
)
social_engineering_learning = Learning.create(
  name: "L'ingéniérie sociale",
  content: "<h1 style='text-align: center'>L'ingénierie sociale</h1>

  <h2>1. Qu’est ce que l’ingénierie sociale ?</h2>
  <div>
    L'ingénierie sociale(social engineering en anglais) est, dans le contexte de la sécurité de l'information, une
    pratique de manipulation psychologique à des fins d'escroquerie. Les termes plus appropriés à utiliser sont le
    piratage psychologique ou la fraude psychologique.

  </div>
  <h2>2. Comment vous en protéger ?</h2>
  <div>
    La quasi-totalité des attaques contient un certain type d'ingénierie sociale. Les e-mails de « phishing » et
    escroqueries virales, par exemple, ont une forte connotation sociale. Les e-mails de phishing tentent de convaincre
    les utilisateurs qu'ils proviennent en réalité de sources légitimes dans l'espoir de récupérer ne serait-ce qu'une
    petite partie des données personnelles ou d'entreprise. Les e-mails contenant des pièces jointes remplies de virus
    prétendent pourtant bien souvent provenir de contacts fiables ou proposent du contenu média en apparence anodin tel
    que des vidéos « amusantes » ou « jolies ».
    <br><br>
    Dans certains cas, les criminels utilisent des méthodes d'ingénierie sociale plus simples afin d'accéder à un réseau
    ou à un ordinateur. Par exemple, un pirate informatique peut fréquenter l'espace de restauration d'un grand immeuble
    de bureaux et espionner par-dessus leur épaule des utilisateurs travaillant sur leur tablette ou ordinateur portable.
    Il peut ainsi accéder à un grand nombre de mots de passe et de noms d'utilisateur, sans envoyer d'e-mail ni même
    écrire une seule ligne de code de virus. Certaines attaques, quant à elles, s'appuient sur une communication réelle
    entre les criminels et les victimes. Dans ce type d'attaque, les pirates poussent l'utilisateur à leur accorder un
    accès au réseau en prétendant qu'il s'agit d'un problème grave qui doit être immédiatement géré. Colère, culpabilité,
    tristesse, les criminels peuvent y recourir pour convaincre des utilisateurs que leur aide est nécessaire et qu'ils ne
    peuvent pas la refuser. Pour terminer, il est important de se méfier de l'ingénierie sociale utilisée comme moyen de
    créer une confusion. De nombreux employés et consommateurs ne réalisent pas qu'avec seulement quelques informations
    (nom, date de naissance ou adresse), les pirates informatiques peuvent accéder à plusieurs réseaux en se faisant
    passer pour des utilisateurs légitimes face au personnel de l'assistance informatique. À partir de là, il est facile
    de réinitialiser les mots de passe et d'obtenir un accès quasiment illimité.<br><br>
    La protection contre les attaques de type ingénierie sociale passe avant tout par la formation. Les utilisateurs
    doivent être formés afin de ne jamais cliquer sur des liens suspects et protéger systématiquement leurs identifiants
    de connexion, au bureau comme à la maison. Si les tactiques d'ingénierie sociale aboutissent, le risque d'infection
    par des programmes malveillants est tout à fait probable.
  </div>

  <h2>3. Quelques exemples en vidéo</h2>
  <div>
    <iframe width='420' height='345' src='https://www.youtube.com/watch?v=xuYoMs6CLEw&t=1s'>
    </iframe> <iframe width='420' height='345' src='https://www.youtube.com/watch?v=s9jwOVGWWuk'>
    </iframe>
  </div>",
  duration: 11
)
physical_security_learning = Learning.create(
  name: 'La sécurité physique',
  content: "<h1 style='text-align: center'>La sécurité physique</h1>

  <h2>1. Introduction</h2>
  <div>
    Une bonne politique de sécurité des systèmes d’information ne se limite pas à la sécurité informatique. Il convient
    également de prendre en compte la sécurité physique des installations.
    <br><br>
    En effet, quel serait l’intérêt de contrôler efficacement les flux de données, les accès logiques au système
    d’information si la sécurité physique des locaux n’est pas assurée? Si le contrôle d’accès physique n’existe pas ou
    est défaillant par exemple; une personne pourrait avoir accès à la salle serveur et voler ou détruire des données
    sensibles. Le même niveau de protection dans la sécurité informatique doit être mis en place dans la sécurité
    physique.
    <br><br>
    Sécurité logique et sécurité physique ne sont pas dissociables et doivent converger vers un seul but : la sécurité
    optimum du système d’information.

  </div>
  <h2>2. Qu’entend-on par sécurité physique?</h2>
  <div>
    Outre le fait de mettre en oeuvre une gestion des accès physique (badge ou lecteur d’empreinte), il convient également
    de prévenir les intrusions ou de les détecter. un système de vidéo surveille et d’alarme sont les bonnes pratiques à
    suivre. Ce pendant le vol n’est pas le seul risque. Une entreprise peut perdre son système d’information et ses
    données à la suite d’un incendie. Il faut donc un système complet de surveillance et mettre en place :
  </div>
  <ul>
    <li> Vidéo protection pour détecter les intrusions</li>
    <li> Détection d’incendie avec déclenchement automatique pour éviter la destruction du matériel</li>
    <li> Presque à l’opposé, la détection de fuite d’eau. Des capteurs peuvent être couplés au système de détection
      d’intrusion et de détection d’incendie.
    </li>
    <li> Lors du choix des locaux. Veiller à avoir des murs épais et des barreaux aux fenêtres pour les rez-de-chaussée.
    </li>
    <li> Lorsque cela est possible et nécessaire, un SAS de contrôle d’accès
    </li>
  </ul>


  <div>
    Bien que votre société mette en œuvre des barrières et politiques de sécurité physique, votre contribution est
    essentielle.
    <br><br>
    Assurez-vous de connaître et suivre les politiques de votre société en matière de sécurité.
    <br><br>
    Par exemple, effacez votre tableau blanc et protégez vos données confidentielles. N'oubliez pas de veiller à la
    confidentialité des conversations privées (soyez toujours conscient des alentours).
  </div>",
  duration: 6
)
fingerprint_learning = Learning.create(
  name: 'Mon empreinte numérique',
  content: "<h1 style='text-align: center'>Mon empreinte numérique</h1>

  <h2>1. Qu'est-ce qu'une empreinte ? </h2>
  <div>
    Vos empreintes sont toutes les données et informations à votre sujet laissées par vous-même ou par d'autres sur la
    toile. Lorsqu'on parle d’empreintes, on pense d'abord aux empreintes volontairement laissées sur le net, c'est-à-dire
    ce que vous publiez.
  </div>
  <h2>2. 10 Conseils pour limiter ses traces !</h2>

  <ul>
    <li> Réfléchissez avant de poster : Sur internet, tout le monde peut voir ce que vous mettez en ligne : infos, photos,
      opinions.</li>
    <li> Respectez les autres : Vous êtes responsable de ce que vous publiez en ligne sur les réseaux sociaux, blog,
      forums... Soyez respectueux, et réfléchissez avant de poster.</li>
    <li> Gardez en le plus pour vous : Donnez le minimum d’informations personnelles sur internet. Evitez de communiquer
      vos opinions politiques, votre religion, comme vous le feriez pour votre numéro de téléphone.
    </li>
    <li> Sécurisez vos comptes : Paramétrez toujours vos profils sur les réseaux sociaux afin de garder la maîtrise des
      informations que vous souhaitez partager. Pensez à activer la double authentification dès que possible en
      privilégiant les applications d’authentifications à plusieurs facteurs (Comme Authenticator).
    </li>
    <li> Multipliez vos adresses mails : Utilisez des adresses électroniques différentes en fonction de vos activités :
      personnelles, professionnelles, associatives, ou sociales. Si une fuite de donnée à lieu, vous limiterez l’impact.
    </li>
    <li> Limitez vos photographies et vidéos : La propagation d’image ou de vidéo est très rapide sur le net. Les photos
      gênantes ou compromettantes vous concernant ou vos proches doivent rester privée.</li>
    <li> Utilisez des pseudonymes : Seuls vos amis, et votre famille pourront savoir qu’il s’agit de vous. De préférence
      utilisez un pseudo qui ne veut rien dire pour vous, à l’aide d’un générateur par exemple.</li>
    <li> Vigilance sur les mots de passe : Un mot de passe doit être confidentiel, unique, complexe et ne doit en aucun
      cas être partagé. Vous pouvez utiliser un gestionnaire de mot de passe pour vous aider. Il ne faut pas stocker de
      mot de passe dans son navigateur, un pirate peut y avoir accès facilement.</li>
    <li> Coup de clean sur l’historique : Effacez régulièrement vos historiques de navigation et pensez à utiliser la
      navigation privée si vous utilisez un ordinateur qui n’est pas le votre.</li>
    <li> Contrôler votre empreinte : régulièrement n’hésitez pas à taper votre nom et prénom dans une barre de recherche
      de votre navigateur, cela vous permet de vérifier quelles informations facilement accessible circulent à votre
      propos sur Internet.</li>

  </ul>

  <h2>3. Mettre à jour son système</h2>

  <div>
    La mise à jour régulière des logiciels et applications est cruciale afin de pallier tout risque de piratage et de
    traçage. Un programme obsolète s’avère une cible facile pour les malwares (logiciels malveillants) et les intrusions.
    Un ordinateur protégé et sécurisé avec un anti-virus à jour, permet de réduire les atteintes à la sécurité.
  </div>",
  duration: 6
)
usb_device_learning = Learning.create(
  name: 'Les appareils USB',
  content: "<h1 style='text-align: center'>Les appareils USB</h1>

  <h2>1. Introduction</h2>
  <div>
    USB est une technologie qui permet de connecter physiquement des appareils. Les fonctionnalités offertes par le périphérique sont annoncées avec des classes
    Par exemple, la classe Mass Storage indique que la clé USB sait stocker des documents. Un même périphérique peut annoncer plusieurs classes : une imprimante peut scanner des documents et en imprimer.
  </div>
  <h2>2. Protégez-vous, vos données ainsi que les systèmes lorsque vous utilisez des appareils USB.</h2>
  <div>
    Les périphériques USB font partie de notre quotidien, qu’il s’agisse de recharger nos appareils numériques, d’adaptateurs divers ou même des souris et claviers, tout se branche en USB. C’est simple, rapide et compatible avec tous les ordinateurs du marché. Cette simplicité et cette diffusion des ports USB en font une cible privilégiée pour les attaques à l’encontre du système d’information, et il est nécessaire de s’en prémunir. Il est à la fois impossible et impératif de s’en séparer, une solution intermédiaire doit être trouvée.
  </div>

  <h2>Quelles sont les menaces ?</h2>
  <div>Les attaques contre les ports USB fonctionnent à deux niveaux : physique et logiciel. Les périphériques USB étant directement reliés, il est important de considérer la surface d’attaque crée par le lien physique et électronique.</div>
  <h3>Attaques physiques (hardware)</h3>
  <div>Par ce terme, j’entends toutes les menaces qui s’attaquent à la couche physique du support USB : une attaque qui fonctionnerait même si le système d’exploitation n’était pas capable d’interagir avec un port USB. Il y a quelques temps il existait, qu’une seule attaque possible, l'USBKill :une clé USB dont le seul but est de détruire l’ordinateur. Elle est composée de condensateurs qui se chargent grâce au courant transmis par l’ordinateur, et une fois une certaine tension atteinte, tout est renvoyé sur la carte mère, ce qui provoque une surtension et grille les composants.

    Cette catégorie d’attaques fonctionne même si la session de l’utilisateur est verrouillée, et provoque des pertes massives de données et de matériel.

    Ainsi, un appareil qui ressemble à une clé USB peut en fait être un appareil malicieux.</div>
    <h3>Attaques logicielles (software)</h3>

  <div>
    J’inclus dans cette catégorie toutes les menaces qui peuvent corrompre le système d’exploitation, que ce soit en injectant un malware ou en interceptant/ex-filtrant des données.

  Afin de comprendre les différentes menaces logicielles, il est important de comprendre tout ce qu’il est possible de faire avec le protocole USB. La liste des classes est fournie sur le site officiel usb.org.

  Attention cependant, tout appareil USB peut être un appareil malicieux, qu’il s’agisse d’un smartphone, d’une cigarette électronique ou d’un chargeur par exemple. Restez vigilant et ne connectez pas d’appareil non reconnus sur vos appareils personnelles ou professionnels. N’acceptez pas les goodies USB dans les salons ou même ceux que vous pourriez trouver “par hasard”.
  </div>
  <h3>🧠 Pour aller plus loin :</h3>
  </iframe> <iframe width='420' height='345' src='https://www.youtube.com/watch?v=PuEim4JhUXg&feature=emb_title'>
  </iframe>",
  duration: 8
)
ransomwares_learning = Learning.create(
  name: 'Les rançongiciels ou ransomwares',
  content: "<h1 style='text-align: center'>Les rançongiciels (ransomwares)</h1>

  <h2>1. Introduction</h2>
  <div>
    Pour commencer : Comprendre les ransomwares en 5 minutes<br><br>
    <iframe width='420' height='345' src='https://www.youtube.com/watch?v=G_lFrgwjw9E'></iframe>
  </div>

  <h2>2. Définition.</h2>
  <div>
    Un ransomware est un type de programme malveillant conçu pour pirater les ordinateurs et forcer les victimes à payer
    une rançon pour que leurs fichiers soient déchiffrés. Les pirates informatiques infectent votre ordinateur en vous
    demandant de télécharger la pièce jointe malveillante attachée à un e-mail ou de vous rendre sur un site contenant un
    code, qui chiffre par la suite vos fichiers critiques ou vous refuse l’accès à votre ordinateur. Voici les deux
    principales formes de ce programme malveillant fréquemment utilisé de nos jours :
  </div>
  <ul>
    <li> <b>Le ransomware Locker.</b> Ce type de programme malveillant empêche les utilisateurs d’utiliser les
      fonctionnalités de base de leur ordinateur. Par exemple, l’accès à votre ordinateur peut vous être refusé, ou bien
      votre clavier et votre souris peuvent être partiellement désactivés. Vous serez encore en mesure d’interagir avec la
      demande de rançon afin de procéder au paiement, mais votre ordinateur vous sera inutile pour toutes les autres
      fonctionnalités. La bonne nouvelle ? En règle générale, le programme malveillant Locker évite de chiffrer les
      fichiers critiques et vous bloque simplement l’accès, ce qui signifie que le risque de destruction totale des
      données est moindre.</li>
    <li> <b>Le ransomware Crypto.</b> L’objectif du ransomware Crypto est de chiffrer vos données critiques (par exemple
      documents, images et vidéos), sans toucher aux fonctionnalités plus basiques de votre ordinateur. Cela crée chez
      l’utilisateur un sentiment de panique, car vous pouvez voir vos fichiers, mais vous ne pouvez pas y accéder. Les
      créateurs de Crypto incluent souvent un compte à rebours à leur demande de rançon : si vous ne payez dans les délais
      impartis, tous vos fichiers seront supprimés. Étant donné que de nombreux utilisateurs ne sont pas conscients de la
      nécessité de faire plusieurs sauvegardes de fichiers dans le Cloud et sur des appareils de stockage physiques, le
      ransomware Crypto peut s’avérer dévastateur et pousser de nombreuses victimes à payer la rançon dans l’espoir de
      récupérer leurs documents numériques.</li>
  </ul>

  <div>Le premier programme malveillant de rançon moderne a vu le jour en 2005 avec Trojan.Gpcoder. En 2015, plus de 58%
    des PC des entreprises ont été attaqués par des programmes malveillants, et les attaques de CryptoLocker ont doublé,
    (selon Kaspersky Lab). Le ransomware Locker représente près de 20% des ransomware. Selon Softpedia, le nombre
    d’attaques avec demande de rançon a doublé en 2015, même si les organes de répression cherchent à stopper les serveurs
    et les créateurs de codes de rançon.</div>
  <div>Lorsqu'il s'agit de se protéger contre les ransomwares, il vaut mieux prévenir que guérir. Pour y parvenir, il est
    essentiel de faire preuve de vigilance. Et d'utiliser le bon logiciel de sécurité.</div>


  <div>
    Les analyses de vulnérabilité peuvent également vous aider à trouver des intrus dans votre système. Tout d'abord, il
    est important de s'assurer que votre ordinateur n'est pas une cible idéale pour les ransomwares. Les logiciels des
    appareils doivent toujours être mis à jour afin de bénéficier des derniers correctifs de sécurité.
  </div>
  <div>En outre, il est essentiel d'agir avec prudence, notamment en ce qui concerne les sites Web malveillants et les
    pièces jointes des emails. Cependant, même les meilleures mesures préventives peuvent échouer, ce qui rend d'autant
    plus indispensable l'existence d'un plan d'urgence. Dans le cas des ransomwares, un plan d'urgence consiste à disposer
    d'une sauvegarde de vos données.</div>

  <h3>🧠 Pour aller plus loin :</h3>
  <li><a href='https://www.ssi.gouv.fr/uploads/2020/09/anssi-guide-attaques_par_rancongiciels_tous_concernes-v1.0.pdf' target='_blank'>Le guide de l'ANSSI concernant les rançongiciels.</a>
  </li>",
  duration: 9
)
incident_crisis_learning = Learning.create(
  name: 'Gérer un incident de sécurité',
  content: "<h1 style='text-align: center'>Gérer un incident de sécurité</h1>

  <h2>1. Que faire en cas d’incident ?</h2>
  <div>
    Ne cédez pas à la panique, et ayez les bons réflexes.
  </div>
  <div>
    En cas de comportement inhabituel de votre ordinateur, vous pouvez soupçonner une intrusion (impossibilité de se
    connecter, activité importante, connexions ou activités inhabituelles, services ouverts non autorisés, fichiers
    créés, modifiés ou supprimés sans autorisation,…). Prévenez votre hiérarchie, ainsi que le responsable de la
    sécurité, au téléphone ou de vive voix, car l’intrus peut-être capable de lire les courriels. Prenez également
    contact avec un prestataire informatique qui vous aidera dans la restauration de votre système ainsi que dans
    l’analyse de l’attaque ;
    Déconnectez la machine du réseau, pour stopper l’attaque. En revanche, maintenez là sous tension et ne la redémarrez
    pas, pour ne pas perdre d’informations utiles pour l’analyse de l’attaque. Faites faire une copie physique du
    disque. Faites rechercher les traces disponibles liées à la compromission. Un équipement n’étant jamais isolé dans
    un système d’information, des traces de sa compromission doivent exister dans d’autres équipements sur le réseau
    (pare-feu, routeurs, outils de détection d’intrusion, etc.). Déposez une plainte auprès de la brigade de gendarmerie
    ou du service de police judiciaire compétent pour le siège de la société, de la Brigade d’enquêtes sur les fraudes
    aux technologies de l’information (Paris et petite couronne), ou de la Direction générale de la sécurité intérieure.
  </div>
  <h2>2. Gérer la communication </h2>
  <div>
    En cas d'incident, vous devez savoir qui contacter, par quel canal et comment procéder en créant le moins de
    frictions possible et en utilisant des ressources limitées, afin d'éviter un cauchemar pour le service client et/ou
    des failles dans la communication. Il est préférable de commencer en interne par une équipe de réponse immédiate,
    puis de progresser vers l'extérieur en sélectionnant les messages pour le bon public.
  </div>
  <div>
    Bien que chaque organisation soit différente, il s'avère généralement judicieux de répartir ces publics en cinq
    groupes distincts avec lesquels communiquer :
  </div>
  <ul>
    <li>Équipe d'astreinte principale : la première à être informée en cas de problème, presque dès la survenue (en
      général, par le biais d'outils de surveillance et d'alerte). Les équipes internes travaillent en coulisse pour
      détecter, contextualiser et résoudre les incidents à l'aide d'outils de communication collaboratifs.</li>
    <li>Équipe de support de première ligne : elle répond directement aux questions et fournit des mises à jour aux
      clients pendant l'incident. Il s'agit d'un rôle extrêmement important, c'est pourquoi cette équipe doit obtenir
      les bonnes informations à transmettre aux utilisateurs finaux.</li>
    <li>Managers et équipe de direction : l'équipe principale doit communiquer avec ce groupe afin de savoir ce qui se
      passe, de connaître l'impact potentiel sur les deux groupes ci-dessous, et éventuellement d'obtenir une
      estimation de la durée du problème.</li>
    <li>Employés dans leur ensemble : les employés doivent être tenus informés de l'évolution des services auxquels
      ils font confiance. Communiquer de manière proactive avec ces utilisateurs permet de réduire le nombre de
      questions sur l'état d'avancement et de tickets de support informatique en double, et de se concentrer davantage
      sur la résolution des problèmes rencontrés.</li>
    <li>Clients externes : si l'incident touche des clients externes, il convient d'envoyer une communication pour
      leur expliquer le problème et à quel moment ils peuvent attendre une résolution, ou au moins des mises à jour
      régulières. Pour les problèmes qui continuent d'affecter la capacité de vos clients à utiliser votre produit,
      nous recommandons de ne jamais attendre plus d'une heure sans envoyer de mise à jour. En outre, vous devez
      toujours indiquer la date de la prochaine mise à jour. S'il s'agit d'un incident suffisamment grave, en
      particulier un incident impliquant la sécurité ou la perte de données, vous souhaiterez peut-être accélérer les
      communications externes et faire appel aux autres équipes compétentes (juridique, RH, sécurité, etc.)</li>
  </ul>
  <h2>3. Et après ? </h2>

  <div>
    Après l’incident : réinstallez complètement le système d’exploitation à partir d’une version saine, supprimez tous les
    services inutiles, restaurez les données d’après une copie de sauvegarde non compromise, et changez tous les mots de
    passe du système d’information.
  </div>

  <h3>🧠 Pour aller plus loin :</h3>
  <li>
    <a href='https://www.ssi.gouv.fr/en-cas-dincident/' target='_blank'>Le guide de l'ANSSI concernant la gestion des
      incidents.</a>
    <a href='https://open.spotify.com/show/6uIlXulpYOsLLsijqjIWNw?go=1&sp_cid=30c51264-b7de-4b66-9c70-e29fbb34270c&utm_source=embed_player_p&utm_medium=desktop&nd=1' target='_blank'>Podcast : Préparer sa réponse à incident ➡️ <i>Le Comptoir Sécu.</i></a>
  </li>",
  duration: 9
)

# DB for Offer
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
  description: 'Elle vous garantie une formation optimale de vos collaborateurs. Elle comprend une formation par mois.'
)

2.times do |_i|
  purchase = Purchase.create(
    offer_id: Offer.all.sample.id,
    company_id: Company.all.sample.id
  )
end

# DB for offer_learning
offer_learning1 = OfferLearning.create(
  learning_id: password_learning.id,
  offer_id: offer_light.id
)
offer_learning2 = OfferLearning.create(
  learning_id: phishing_learning.id,
  offer_id: offer_light.id
)

offer_learning3 = OfferLearning.create(
  learning_id: password_learning.id,
  offer_id: offer_essential.id
)
offer_learning4 = OfferLearning.create(
  learning_id: phishing_learning.id,
  offer_id: offer_essential.id
)
offer_learning5 = OfferLearning.create(
  learning_id: separation_of_uses_learning.id,
  offer_id: offer_essential.id
)
offer_learning6 = OfferLearning.create(
  learning_id: travel_security_learning.id,
  offer_id: offer_essential.id
)

offer_learning7 = OfferLearning.create(
  learning_id: password_learning.id,
  offer_id: offer_excelcium.id
)
offer_learning8 = OfferLearning.create(
  learning_id: phishing_learning.id,
  offer_id: offer_excelcium.id
)
offer_learning9 = OfferLearning.create(
  learning_id: separation_of_uses_learning.id,
  offer_id: offer_excelcium.id
)
offer_learning10 = OfferLearning.create(
  learning_id: travel_security_learning.id,
  offer_id: offer_excelcium.id
)
offer_learning11 = OfferLearning.create(
  learning_id: check_list_learning.id,
  offer_id: offer_excelcium.id
)
offer_learning12 = OfferLearning.create(
  learning_id: gpdr_learning.id,
  offer_id: offer_excelcium.id
)
offer_learning13 = OfferLearning.create(
  learning_id: social_engineering_learning.id,
  offer_id: offer_excelcium.id
)
offer_learning14 = OfferLearning.create(
  learning_id: physical_security_learning.id,
  offer_id: offer_excelcium.id
)
offer_learning15 = OfferLearning.create(
  learning_id: incident_crisis_learning.id,
  offer_id: offer_excelcium.id
)
offer_learning16 = OfferLearning.create(
  learning_id: fingerprint_learning.id,
  offer_id: offer_excelcium.id
)
offer_learning17 = OfferLearning.create(
  learning_id: usb_device_learning.id,
  offer_id: offer_excelcium.id
)
offer_learning18 = OfferLearning.create(
  learning_id: ransomwares_learning.id,
  offer_id: offer_excelcium.id
)


# create a customer for tests
cust1 = User.create(first_name: 'Real', last_name: 'Customer', email: 'therealcustomer@yopmail.com', password: 'password', password_confirmation: 'password',
                    status: 1)
comp1 = Company.create(
  name: 'test engine'
)

UserCompany.create(user: cust1, company: comp1)
Purchase.create(company: comp1, offer: offer_essential)
