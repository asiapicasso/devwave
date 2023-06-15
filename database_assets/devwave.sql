-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 15 juin 2023 à 12:13
-- Version du serveur : 8.0.33-0ubuntu0.22.04.2
-- Version de PHP : 8.1.2-1ubuntu2.11

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- START TRANSACTION;
-- SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `devwave`
--

-- --------------------------------------------------------

--
-- Structure de la table `album`
--

CREATE TABLE `album` (
  `id` int NOT NULL,
  `title` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `album`
--

INSERT INTO `album` (`id`, `title`, `year`) VALUES
(1, 'Hybrid Theory', '2000'),
(2, 'The Marshall Mathers LP', '2000'),
(3, 'Kid A', '2000'),
(4, 'All That You Can\'t Leave Behind', '2000'),
(5, 'Oops!... I Did It Again', '2000'),
(6, 'The Blueprint', '2001'),
(7, 'Songs in A Minor', '2001'),
(8, 'Is This It', '2001'),
(9, 'Take Off Your Pants and Jacket', '2001'),
(10, 'White Blood Cells', '2001'),
(11, 'Hot Fuss', '2004'),
(12, 'American Idiot', '2004'),
(13, 'Confessions', '2004'),
(14, 'College Dropout', '2004'),
(15, 'Funeral', '2004'),
(16, 'Back to Black', '2006'),
(17, 'Stadium Arcadium', '2006'),
(18, 'Whatever People Say I Am, That\'s What I\'m Not', '2006'),
(19, 'Continuum', '2006'),
(20, 'FutureSex/LoveSounds', '2006'),
(21, 'Good Girl Gone Bad', '2007'),
(22, 'Graduation', '2007'),
(23, 'Minutes to Midnight', '2007'),
(24, 'Because of the Times', '2007'),
(25, 'In Rainbows', '2007'),
(26, 'Viva la Vida or Death and All His Friends', '2008'),
(27, 'Tha Carter III', '2008'),
(28, '808s & Heartbreak', '2008'),
(29, 'Only by the Night', '2008'),
(30, 'I Am... Sasha Fierce', '2008'),
(31, 'The Fame', '2008'),
(32, 'The Resistance', '2009'),
(33, 'Lungs', '2009'),
(34, 'The Blueprint 3', '2009'),
(35, 'The E.N.D.', '2009'),
(36, 'The Fame Monster', '2009'),
(37, 'Brothers', '2010'),
(38, 'Teenage Dream', '2010'),
(39, 'My Beautiful Dark Twisted Fantasy', '2010'),
(40, 'The Suburbs', '2010'),
(41, 'Recovery', '2010'),
(42, '21', '2011'),
(43, 'Born This Way', '2011'),
(44, 'Wasting Light', '2011'),
(45, 'Watch the Throne', '2011'),
(46, 'Ceremonials', '2011'),
(47, 'Channel Orange', '2012'),
(48, 'Red', '2012'),
(49, 'good kid, m.A.A.d City', '2012');

-- --------------------------------------------------------

--
-- Structure de la table `album_artist`
--

CREATE TABLE `album_artist` (
  `artist_id` int NOT NULL,
  `album_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `album_artist`
--

INSERT INTO `album_artist` (`artist_id`, `album_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49);

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int NOT NULL,
  `title` varchar(45) NOT NULL,
  `nb_vote` varchar(45) NOT NULL,
  `poll_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `artist`
--

CREATE TABLE `artist` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `artist`
--

INSERT INTO `artist` (`id`, `name`) VALUES
(1, 'Linkin Park'),
(2, 'Eminem'),
(3, 'Radiohead'),
(4, 'U2'),
(5, 'Britney Spears'),
(6, 'Jay-Z'),
(7, 'Alicia Keys'),
(8, 'The Strokes'),
(9, 'Blink-182'),
(10, 'The White Stripes'),
(11, 'The Killers'),
(12, 'Green Day'),
(13, 'Usher'),
(14, 'Kanye West'),
(15, 'Arcade Fire'),
(16, 'Amy Winehouse'),
(17, 'Red Hot Chili Peppers'),
(18, 'Arctic Monkeys'),
(19, 'John Mayer'),
(20, 'Justin Timberlake'),
(21, 'Rihanna'),
(22, 'Kings of Leon'),
(23, 'Beyoncé'),
(24, 'Lady Gaga'),
(25, 'Muse'),
(26, 'Florence + The Machine'),
(27, 'The Black Eyed Peas'),
(28, 'Foo Fighters'),
(29, 'Coldplay'),
(30, 'Lil Wayne'),
(31, 'Taylor Swift'),
(32, 'Frank Ocean'),
(33, 'Adele'),
(34, 'Florence + The Machine'),
(35, 'Bruno Mars'),
(36, 'Ed Sheeran'),
(37, 'Imagine Dragons'),
(38, 'Kendrick Lamar'),
(39, 'Lorde'),
(40, 'Sam Smith'),
(41, 'The Weeknd'),
(42, 'Twenty One Pilots'),
(43, 'Billie Eilish'),
(44, 'Travis Scott'),
(45, 'Post Malone'),
(46, 'Dua Lipa'),
(47, 'Harry Styles'),
(48, 'Lewis Capaldi'),
(49, 'Taylor Swift');

-- --------------------------------------------------------

--
-- Structure de la table `chosen_song`
--

CREATE TABLE `chosen_song` (
  `id` int NOT NULL,
  `date` varchar(45) NOT NULL,
  `nb_vote` varchar(45) NOT NULL,
  `user_id` int NOT NULL,
  `song_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `chosen_song`
--

INSERT INTO `chosen_song` (`id`, `date`, `nb_vote`, `user_id`, `song_id`) VALUES
(1, '2023-06-07 07:44:27', '1', 7, 4),
(2, '2023-06-08 07:44:27', '1', 4, 7);

-- --------------------------------------------------------

--
-- Structure de la table `contest`
--

CREATE TABLE `contest` (
  `id` int NOT NULL,
  `date` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `contest_user`
--

CREATE TABLE `contest_user` (
  `contest_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `created_at`, `updated_at`, `user_id`, `message`) VALUES
(1, NULL, NULL, 4, 'C\'est qui l\'invité ? J\'ai loupé le début j\'étais en voiture  !'),
(2, NULL, NULL, 2, 'Moi aussi j’aimerai être à Rome !'),
(3, NULL, NULL, 7, 'Il y a bientôt un jeu concours ?');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `poll`
--

CREATE TABLE `poll` (
  `id` int NOT NULL,
  `date` varchar(45) NOT NULL,
  `theme` varchar(45) NOT NULL,
  `question` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `random_sentence`
--

CREATE TABLE `random_sentence` (
  `id` int NOT NULL,
  `sentence` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `song`
--

CREATE TABLE `song` (
  `id` int NOT NULL,
  `title` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL,
  `duration` varchar(45) NOT NULL,
  `album_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `song`
--

INSERT INTO `song` (`id`, `title`, `year`, `duration`, `album_id`) VALUES
(1, 'Under Pressure', '1981', '4:08', 7),
(2, 'Every Breath You Take', '1983', '4:13', 8),
(3, 'Like a Virgin', '1984', '3:38', 9),
(4, 'Take on Me', '1985', '3:46', 10),
(5, 'Livin on a Prayer', '1986', '4:09', 11),
(6, 'With or Without You', '1987', '4:56', 12),
(7, 'Sweet Child O\' Mine', '1988', '5:56', 13),
(8, 'Another Day in Paradise', '1989', '5:22', 14),
(9, 'Nothing Compares 2 U', '1990', '5:07', 15),
(10, 'Enter Sandman', '1991', '5:32', 16),
(11, 'November Rain', '1992', '8:57', 17),
(12, 'Zombie', '1994', '5:06', 18),
(13, 'Wonderwall', '1995', '4:18', 19),
(14, 'Wannabe', '1996', '2:52', 20),
(15, 'My Heart Will Go On', '1997', '4:40', 21),
(16, '...Baby One More Time', '1998', '3:30', 22),
(17, 'Smooth', '1999', '4:58', 23),
(18, 'Beautiful Day', '2000', '4:06', 24),
(19, 'Hot in Herre', '2002', '3:48', 25),
(20, 'Crazy in Love', '2003', '3:56', 26),
(21, 'Yeah!', '2004', '4:10', 27),
(22, 'Boulevard of Broken Dreams', '2005', '4:20', 28),
(23, 'Bad Romance', '2009', '4:54', 29),
(24, 'Rolling in the Deep', '2011', '3:48', 30),
(25, 'Get Lucky', '2013', '4:08', 31);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `picture_path` varchar(100) NOT NULL,
  `access_type` varchar(45) NOT NULL DEFAULT 'reader',
  `firstname` varchar(60) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lastname` varchar(60) NOT NULL,
  `username` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `tel`, `picture_path`, `access_type`, `firstname`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `lastname`, `username`) VALUES
(1, 'asia5@gm.ch', NULL, 'storage/assets/profile_pictures/default/picture8.png', 'reader', 'asia', NULL, '$2y$10$9SfbAZML/0KAFQOD9wO74erC.gMLagzEuJWjbnvty12qmHzaTDsoW', NULL, '2023-06-06 06:31:12', '2023-06-06 06:31:12', 'asia', 'asia555'),
(2, 'c@larue.yverdon', NULL, 'profils-02.png', 'reader', 'o', NULL, '$2y$10$KX9SiXCPZifl4xOVluzXKuQH2c.zJwRPGi123e7hawmEAWQ9lfMim', NULL, '2023-06-06 06:40:48', '2023-06-06 06:40:48', 'max', 'clarue'),
(3, 'vrdcl.futf@grdx.ch', NULL, 'storage/assets/profile_pictures/default/picture_2.png', 'reader', 'cjuc', NULL, '$2y$10$tmmTFF6CPfRVu3LKJ4HuUOrFhS7kE7P7h725KN2hkjBG7TdzlsQsG', NULL, NULL, NULL, 'vnihv', 'cgtuiknnn'),
(4, 'vincent.dubuis@heig-vd.ch', NULL, 'profils-04.png', 'reader', 'Vincent', NULL, '$2y$10$dhu0gbjQ2ZH0Vqz6su1OUeOJvzpze79pox95.awpextT1JfeuH6pC', NULL, NULL, NULL, 'Vincent', 'vincent'),
(5, 'stef.picasso@gmail.com', NULL, 'storage/assets/profile_pictures/default/picture_1.png', 'reader', 'Stefano', NULL, '$2y$10$PGwAAwKQo0R4ithZWW1qiuW07lpA/AtObwJEspt9sfDCZZ7UUOzwy', NULL, NULL, NULL, 'Picasso', 'SPicasso'),
(6, 'gvhbj@cfgvuhj.ch', NULL, 'storage/assets/profile_pictures/default/picture_1.png', 'reader', 'fcgzh', NULL, '$2y$10$THoN8WTAX4JkQsdY2q62He7T.UnOlZpqz7QQryjdeUC74yoSlZ8te', NULL, NULL, NULL, 'gvuhij', 'cgvhbj'),
(7, 'marine@dev.ch', NULL, 'profils-07.png', 'reader', 'Marine', NULL, '$2y$10$0fePvroLvFVc4/3SaCpFLORWzwwHMmZv1b7Vn1QHOv30wWjggEdiS', NULL, '2023-06-06 15:55:53', '2023-06-06 15:55:53', 'Hosch', 'marine');

-- --------------------------------------------------------

--
-- Structure de la table `user_has_poll`
--

CREATE TABLE `user_has_poll` (
  `user_id` int NOT NULL,
  `poll_id` int NOT NULL,
  `user_status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `album_artist`
--
ALTER TABLE `album_artist`
  ADD PRIMARY KEY (`artist_id`,`album_id`),
  ADD KEY `fk_artist_has_album_album1_idx` (`album_id`),
  ADD KEY `fk_artist_has_album_artist1_idx` (`artist_id`);

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_answer_poll1_idx` (`poll_id`);

--
-- Index pour la table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chosen_song`
--
ALTER TABLE `chosen_song`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chosen_song_user1_idx` (`user_id`),
  ADD KEY `fk_chosen_song_song1_idx` (`song_id`);

--
-- Index pour la table `contest`
--
ALTER TABLE `contest`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contest_user`
--
ALTER TABLE `contest_user`
  ADD PRIMARY KEY (`contest_id`,`user_id`),
  ADD KEY `fk_contest_has_user_user1_idx` (`user_id`),
  ADD KEY `fk_contest_has_user_contest1_idx` (`contest_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `random_sentence`
--
ALTER TABLE `random_sentence`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_song_album1_idx` (`album_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_has_poll`
--
ALTER TABLE `user_has_poll`
  ADD PRIMARY KEY (`user_id`,`poll_id`),
  ADD KEY `fk_user_has_poll_poll1_idx` (`poll_id`),
  ADD KEY `fk_user_has_poll_user1_idx` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `album`
--
ALTER TABLE `album`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `chosen_song`
--
ALTER TABLE `chosen_song`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `contest`
--
ALTER TABLE `contest`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `poll`
--
ALTER TABLE `poll`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `random_sentence`
--
ALTER TABLE `random_sentence`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `song`
--
ALTER TABLE `song`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `album_artist`
--
ALTER TABLE `album_artist`
  ADD CONSTRAINT `fk_artist_has_album_album1` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`),
  ADD CONSTRAINT `fk_artist_has_album_artist1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`);

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `fk_answer_poll1` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`id`);

--
-- Contraintes pour la table `chosen_song`
--
ALTER TABLE `chosen_song`
  ADD CONSTRAINT `fk_chosen_song_song1` FOREIGN KEY (`song_id`) REFERENCES `song` (`id`),
  ADD CONSTRAINT `fk_chosen_song_user1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `contest_user`
--
ALTER TABLE `contest_user`
  ADD CONSTRAINT `fk_contest_has_user_contest1` FOREIGN KEY (`contest_id`) REFERENCES `contest` (`id`),
  ADD CONSTRAINT `fk_contest_has_user_user1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `fk_song_album1` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`);

--
-- Contraintes pour la table `user_has_poll`
--
ALTER TABLE `user_has_poll`
  ADD CONSTRAINT `fk_user_has_poll_poll1` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`id`),
  ADD CONSTRAINT `fk_user_has_poll_user1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
