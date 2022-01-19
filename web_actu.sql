-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 19 jan. 2022 à 16:53
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `web'actu`
--

-- --------------------------------------------------------

--
-- Structure de la table `article_cat`
--

DROP TABLE IF EXISTS `article_cat`;
CREATE TABLE IF NOT EXISTS `article_cat` (
  `id_article_cat` int NOT NULL AUTO_INCREMENT,
  `id_article` int NOT NULL,
  `id_cat` int NOT NULL,
  PRIMARY KEY (`id_article_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `blog_articles`
--

DROP TABLE IF EXISTS `blog_articles`;
CREATE TABLE IF NOT EXISTS `blog_articles` (
  `id_article` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auteur` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `categorie` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `datepublication` date NOT NULL,
  PRIMARY KEY (`id_article`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `blog_articles`
--

INSERT INTO `blog_articles` (`id_article`, `titre`, `content`, `auteur`, `categorie`, `datepublication`) VALUES
(1, '20 outils webs indispensables pour développeurs ', 'Avoir les bons outils en tant que développeur va te faire gagner un temps fou sur tout. Que ce soit pour produire du code, vérifier de la donnée ou valider des commandes et des configurations, ça devient vite indispensable. Je te dévoile mon dossier favoris, j’ai mis plusieurs années à construire cette liste !', 'WebActu Team ', 'WEB DEV ', '2021-12-13'),
(2, '15 Outils essentiels pour les développeurs frontend ', 'Vous êtes développeur frontend ? Vous connaissez et utilisez plusieurs outils de développement actuellement, mais vous gagnez en expérience, et la vitesse à laquelle votre secteur évolue vous impose le devoir d’être plus efficient et plus productif à chaque mission. Il vous faut découvrir de nouveaux outils. Voici présentés ici 15 outils qui devraient aider les développeurs frontend à réduire leur temps de travail et à décupler leur niveau de productivité.', 'WebActu Team', 'WEB DEV', '2020-04-28'),
(3, 'Le SEO ira-t-il au delà du référencement sur Internet en 2022 ?', 'Le SEO devient-il un levier qui demande des ressources au delà d\'Internet, et d\'aller chercher de la visibilité par tous les moyens possibles et/ou accessibles ? Voici quelques points abordés sur l\'avenir du SEO en 2022 et pour les années à suivre :', 'WebActu Team ', 'SEO', '2022-01-07'),
(4, 'Tendances SEO 2022', 'Chaque année, nombreux sont les consultants SEO, annonceurs et agences spécialisées à s’interroger sur les tendances qui vont impacter le métier de référenceur sur Google en 2022 (et surtout les roadmaps SEO des concernés). ', 'WebActu Team', 'SEO', '2021-01-12'),
(5, 'Quelles sont les tendances UX pour 2022 ? ', 'Le digital est en constante évolution car il est lié aux nouvelles technologies, et le numérique agit comme une véritable vitrine pour les innovations de manière générale. De plus, le contexte sanitaire a obligé les entreprises à s’adapter à de nouvelles contraintes. On peut donc s’attendre à voir beaucoup de nouvelles choses en ce qui concerne les tendances en matière d’UX en 2022 et en voici quelques pistes.', 'WebActu Team', 'UX', '2021-01-12'),
(6, '17 méthodes simples pour améliorer son UI design ', 'Optimiser ses interfaces, c’est gagner de l’UX (expérience utilisateur) donc des clients ! Voici quelques conseils pour améliorer son UI design et baisser votre taux de rebond.', 'WebActu Team', 'UI', '2021-12-15'),
(7, 'Comment choisir sa palette de couleurs en UI design ?', '\'90 secondes. C’est le temps suffisant pour que la couleur d’un produit plaise aux yeux des consommateurs, ou pas. Dans l’univers du design, et plus particulièrement de l’UI Design, le choix de la palette de couleurs est donc primordial. Elle s’est même transformée en un outil de travail incontournable au sein d’un projet de réalisation numérique. Toutes les informations nécessitent un choix colorimétrique millimétré et chaque couleur doit apporter une émotion engageante.\',\'Web\'actu Team\',\'10/05/2021\')\r\n', 'WebActu Team', 'UI', '2021-05-10'),
(8, '3 choses à ne pas faire pour votre SEO en 2022', 'L’année 2021 a été relativement chargée pour Google et les référenceurs SEO du monde entier. Le géant des moteurs de recherche s’améliore tout le temps, mais au cours de la dernière année, nous avons vu un certain nombre de mises à jour assez importantes de Google qui ont donné aux spécialistes du marketing numérique des raisons de prêter attention.', 'WebActu Team', 'SEO', '2022-01-07'),
(9, 'Comment  réussir en référencement naturel en 2022 ? ', 'Même si les réseaux sociaux permettent de faire de jolies opérations de lead generation, Google reste le réseau numéro 1 pour attirer des prospects ciblés. Sur les réseaux sociaux, les internautes sont le plus souvent uniquement là pour se distraire, alors que sur Google ils sont véritablement à la recherche de quelque chose. Cette différence d’attitude fait que la maturité d’achat est bien meilleure lorsque l’on cible les internautes qui font des recherches sur Google.', 'WebActu Team', 'SEO', '2021-11-15'),
(10, 'Le référencement naturel (SEO) en 2022 : Horizon ', 'Dans cette chronique, nous aborderons les tendances à suivre pour réussir sa stratégie de référencement naturel en 2022. Expérience utilisateur, ergonomie, UX sont les “nouveaux” critères qui doivent être traités avec précision depuis le lancement du projet Core Web Vitals de Google.', 'WebActu Team', 'SEO', '2021-11-23'),
(11, 'Les 8 grandes tendances en UX design de 2022', 'Le design UX consiste à faire fonctionner les sites web, pour toutes les personnes impliquées. Le design UX améliore l’expérience de l’utilisateur, la rendant plus fluide, transparente et positive. Avec les nouvelles réalités artificielles et virtuelles qui modifient notre façon de travailler et de socialiser, l’utilisation d’internet et des appareils technologiques a augmenté au cours des deux dernières années. Il y a plus d’utilisateurs, plus de demandes, plus de besoins changeants et beaucoup plus d’avis et de commentaires, ce qui fait de l’UX design l’un des domaines du design les plus dynamiques.', 'WebActu Team', 'UX', '2021-12-01'),
(12, 'Google : les algorithmes à connaître pour un bon référencement', 'Google annonce régulièrement des nouveaux algorithmes ou des mises à jour (updates). Pour vous aider à vous y retrouver dans cette jungle, consultez cette liste avec des explications et des liens pour obtenir de l’aide.', 'WebActu Team', 'SEO', '2021-11-17');

-- --------------------------------------------------------

--
-- Structure de la table `inscriptions`
--

DROP TABLE IF EXISTS `inscriptions`;
CREATE TABLE IF NOT EXISTS `inscriptions` (
  `id_auteur` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mel_auteur` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password_auteur` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_auteur`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inscriptions`
--

INSERT INTO `inscriptions` (`id_auteur`, `pseudo`, `mel_auteur`, `password_auteur`) VALUES
(1, 'A. PANISOT', 'apanisot@gmail.com', '369258NBVCX741mlk'),
(2, 'ALMI', 'almi@yahoo.fr', '$2y$10$MPj/0fy6e3OWEPmFOtOcHeZE8tQxO8aV1aa/Kg0Jh68g1EhkIXCui'),
(3, 'C. BAVERT', 'cbavert@uol.fr', '654123ploki951AQW'),
(4, 'B. GALLON', 'bgallon@gmail.com', '456825pamqnw321987OZKS'),
(5, 'B. DANSI', 'bdansi@yahoo.fr', '357951poiuy258TGBVHI'),
(6, 'WebActu Team', 'team.blog@webactu.com', '25698EDVOJV94623568efb');

-- --------------------------------------------------------

--
-- Structure de la table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `id_abonné` int NOT NULL AUTO_INCREMENT,
  `mel_abonné` varchar(255) NOT NULL,
  PRIMARY KEY (`id_abonné`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
