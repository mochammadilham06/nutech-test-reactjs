-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 07:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comments`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Alexa Crooks IV', 'Harum aut vitae ea ipsa aut id quae et fuga sed quidem veniam repellendus consequatur doloremque dolor veniam.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(2, 'Velma Morar', 'In deserunt et sequi maiores quibusdam nihil fugiat et aut sint dolor occaecati modi.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(3, 'Mrs. Queenie Adams DDS', 'Architecto ut corrupti reprehenderit possimus veniam voluptatum cum ratione non et non voluptatem culpa.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(4, 'Jamey Kuhlman V', 'Officiis aut soluta qui beatae quo ut quo impedit ut qui fuga molestiae provident.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(5, 'Prof. Lurline West DDS', 'Impedit similique ut corporis asperiores sunt voluptas possimus similique aut sed unde maxime totam voluptas.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(6, 'Angela Ruecker II', 'Quis nobis nihil laborum tempora illum architecto architecto quia totam ex aut beatae voluptates.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(7, 'Adele Hermann', 'Rerum voluptatem natus ea adipisci saepe sit et culpa placeat reiciendis consectetur voluptatem velit pariatur aperiam minus aspernatur nam.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(8, 'Mathilde VonRueden', 'Nemo modi culpa dolorem eveniet ut voluptatibus est veritatis error magni harum aut.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(9, 'Mr. Francis Schoen', 'Impedit vel reprehenderit minus enim dolorem a repellat dolores delectus fugit soluta dolore unde dolorum rerum.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(10, 'Kenna Toy', 'Eum quae voluptas sapiente ipsa est corporis eius labore molestiae dolore labore et nihil veniam occaecati harum.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(11, 'Mr. Tyreek Mills Jr.', 'Quis sed non optio velit voluptatem quis labore veritatis vero incidunt et qui est id voluptatem.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(12, 'Mr. Francisco Willms', 'Delectus debitis optio eos est excepturi odio et totam ex et velit temporibus et necessitatibus aliquid est commodi.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(13, 'Tevin Marvin', 'Exercitationem autem qui omnis nobis odit quod voluptas eligendi ipsa voluptatum iste et consequatur nisi.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(14, 'Kaitlin Dach DDS', 'Ad enim est sequi perspiciatis cumque quo dolores a voluptates quia hic tenetur consequuntur quos tempora architecto aperiam ad ipsam.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(15, 'Derek Goodwin', 'Nobis ratione inventore unde delectus debitis quos qui cupiditate enim numquam pariatur quibusdam facilis labore et dolorem repellendus doloremque alias voluptas.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(16, 'Mr. Zackery McDermott', 'Quo ut culpa nisi quaerat ut totam sed consequatur est sit.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(17, 'Kaden Beier', 'Assumenda dolorem aut nulla molestiae sapiente velit totam ut temporibus laudantium aut.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(18, 'Eloy Waters II', 'Consequuntur et laboriosam hic aut ut quibusdam repudiandae laudantium et est sint non quasi similique asperiores excepturi id quia aliquam maiores.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(19, 'Jamarcus Waters', 'Et quis quo aut est deserunt delectus distinctio omnis omnis non nostrum alias autem nesciunt harum est.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(20, 'Sabrina Baumbach', 'Autem exercitationem minus earum aliquid maiores aliquam enim vero ut at debitis aspernatur architecto quam sequi vel corporis.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(21, 'Taryn Treutel Sr.', 'Amet quo nemo molestiae non delectus sunt ut accusamus rem.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(22, 'Odell Breitenberg', 'Consequuntur vero et eveniet debitis quos incidunt velit quia distinctio sint et odio aperiam et et et voluptas assumenda nobis.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(23, 'Leopoldo Reichel', 'Eaque sit culpa debitis ea vel minima et doloremque at qui odio natus.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(24, 'Trevion Gorczany', 'Ut deserunt labore quae magnam ad consectetur totam minima dolore.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(25, 'Ari Hickle', 'Repudiandae iste quas at ad officiis similique doloremque adipisci temporibus eos placeat vitae et ut accusamus accusantium repellat nesciunt.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(26, 'Verla Denesik', 'In suscipit dolorum sit veniam eos ut dicta modi eveniet praesentium fugiat.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(27, 'Mr. Pierce Johnston V', 'Enim eveniet enim dolor consectetur aspernatur laborum labore laudantium ad illo delectus alias voluptate non velit expedita qui numquam veritatis.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(28, 'Savannah Jacobs', 'Praesentium et esse itaque molestiae veritatis voluptatem aliquam est autem earum.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(29, 'Dejon Ratke III', 'Et dignissimos eum aut voluptatem voluptas rerum omnis quisquam quas quasi ipsa.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(30, 'Thora Harber', 'Dolore sapiente nesciunt numquam aut nostrum occaecati et dolorum dolor qui voluptatem minima aut.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(31, 'Dr. Vesta Herzog', 'Ut et similique et aut et ducimus eos aut nihil iste voluptatem rerum nobis.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(32, 'Mr. Lester Howell', 'Omnis porro quam et asperiores et et doloremque est optio quae amet alias aut.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(33, 'Dr. Tyrique Bergnaum', 'Atque beatae et necessitatibus quia unde vel quo ut est illum qui asperiores enim ut fugit numquam rem quam nam.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(34, 'Prof. Jovanny Ritchie', 'Quia sed amet ut ut labore dolor hic eligendi excepturi a possimus aut consequatur odio eum quos occaecati sint qui modi non.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(35, 'Francisco Boyer', 'Aut possimus corporis quae nulla asperiores aperiam fugiat omnis voluptate.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(36, 'Delphine Johnston IV', 'Dolores quia et magnam pariatur quasi rerum officiis ut et.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(37, 'Nannie Weimann III', 'Earum totam quis odio quibusdam voluptates quis nulla molestiae commodi sit facilis excepturi modi rerum omnis eaque accusantium magni pariatur et.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(38, 'Darrion Tremblay', 'Qui et veritatis est laudantium omnis est et omnis odio et saepe dolores eos rerum accusantium.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(39, 'Chelsea Doyle', 'Quos aut quod expedita aut a atque id accusamus minima eius optio dolores nostrum ducimus.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(40, 'Kaylie Daugherty', 'Enim maiores velit est sequi hic cupiditate quia voluptates a earum laudantium dolorem ut consequatur assumenda pariatur eos dolor animi.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(41, 'Prof. Astrid Sawayn III', 'Laudantium repellat est natus blanditiis tempore cumque cupiditate qui doloribus unde minima quia quia debitis voluptates accusantium perferendis magnam.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(42, 'Katelynn Kohler', 'Excepturi minima aliquid ipsam debitis quis ut earum delectus voluptatem nisi.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(43, 'Dr. Ceasar Wisozk', 'Qui voluptates ut doloribus velit sed eum et perferendis id voluptas nisi voluptatum labore quasi molestiae eum repudiandae et omnis non.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(44, 'Desiree Schultz', 'Perferendis esse aliquid qui fugiat iure qui itaque corporis sed dolorum iusto aut nulla sed est vel optio.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(45, 'Diana Pfeffer', 'Magni magnam laudantium omnis odit pariatur impedit explicabo voluptatibus fugit voluptatem consequuntur nostrum repudiandae et ex minus consequatur repellat dignissimos.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(46, 'Cordie Weber', 'Quam illo non est repudiandae libero porro blanditiis soluta ut inventore dignissimos reprehenderit enim qui veniam.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(47, 'Mable Davis', 'Et debitis sed vitae recusandae molestias ipsa modi et autem reprehenderit eaque harum numquam sed.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(48, 'Sydni Hackett', 'In perferendis quia debitis sunt id nemo adipisci reprehenderit aut voluptas incidunt officia qui est mollitia sed sit maxime necessitatibus.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(49, 'Prof. Nils Ziemann III', 'Vero praesentium impedit est consequatur animi est similique voluptates nobis praesentium placeat dicta voluptas et id vero corporis.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(50, 'Dr. Marilou Feil', 'Molestiae ducimus dolorem eos inventore officiis qui ex iure quod rerum suscipit et quia est maiores illum voluptate corrupti qui sequi.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(51, 'Lacey Jaskolski', 'Consectetur earum quod quae nihil aut porro aut expedita qui.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(52, 'Alexandria Bailey', 'Eligendi vero qui velit ut non unde praesentium saepe aspernatur illum iusto praesentium.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(53, 'Xander Huels', 'Veritatis et numquam aut assumenda neque minima sed omnis omnis.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(54, 'Prof. Lolita Schuppe IV', 'Consequatur nulla voluptas error rem neque veniam reprehenderit cupiditate id qui sunt non voluptas et exercitationem ipsam officia veritatis asperiores.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(55, 'Isabell Gislason', 'Fuga quos excepturi molestias sed quisquam est ratione vitae dolor quis dolore similique facere omnis recusandae.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(56, 'Ruthie Barton III', 'Autem cum tempore enim odio et est unde et voluptas nostrum cumque.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(57, 'Manuela Carroll Sr.', 'Sunt vitae consequatur ut doloribus vero quibusdam enim culpa quos hic aspernatur quas repellat omnis eius pariatur fuga.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(58, 'Tillman Becker', 'Perferendis nulla odio consequatur vel magni perferendis temporibus aliquam esse autem accusamus vitae vitae.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(59, 'Wilfredo Schimmel', 'Quisquam saepe aut nesciunt odit voluptas animi veritatis est voluptatem atque qui quod suscipit accusantium sint consequatur.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(60, 'Maryjane McClure', 'Occaecati accusamus vitae quam amet dolorum mollitia rerum delectus soluta sint vero optio in.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(61, 'Dr. Chasity Fay', 'Quam eius vel deserunt veritatis nihil quod enim occaecati fugiat vitae voluptatem voluptatibus.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(62, 'Ms. Retta Hickle IV', 'Fugiat ratione minus qui veritatis possimus aut voluptatem qui maiores quod repellat magni laborum quia nulla incidunt explicabo est.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(63, 'Tiana Kunde', 'Nemo non quaerat non et nulla perferendis natus quia quia dolores sunt nobis est tempore reiciendis eligendi.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(64, 'Griffin Larson', 'Maiores placeat sed dolor reprehenderit ut sint nemo sint tempore quas quis dignissimos sed totam provident vel.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(65, 'Chet Hauck', 'Aut animi saepe ipsa expedita error sit tempore sunt labore iste aliquid nesciunt iste.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(66, 'Millie Bogan', 'Sunt id nihil distinctio quasi et nihil repellendus libero ea qui et voluptatum fugiat cum eius maxime et ducimus soluta.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(67, 'Brisa Herman', 'In nihil deserunt consectetur consequuntur animi est qui quaerat et sed illo distinctio repellendus.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(68, 'Ayden Jacobi III', 'Deserunt quia ipsum esse aut sunt ut enim laudantium sit aut in quis asperiores animi aut sed odit.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(69, 'Eleazar Paucek', 'Libero ea aut libero quos recusandae assumenda odit beatae similique qui corporis eos quis quam cum quo similique asperiores et commodi expedita.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(70, 'Arnoldo Hand', 'Quam beatae vitae hic autem voluptatem et eos distinctio molestiae inventore aut sapiente id blanditiis adipisci cum tempore velit.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(71, 'Wilma Graham', 'Iure repudiandae consequatur error cupiditate dolor et ut voluptatem sint.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(72, 'Prof. Jayce Shanahan IV', 'Et aliquid qui iure repellendus est vero asperiores ab officiis sed sint maiores quia accusantium perspiciatis praesentium facere velit aliquid ea nostrum.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(73, 'Aiyana Hoeger', 'Qui quo consequatur repellat et quia suscipit sed magnam autem sit voluptatibus vel.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(74, 'Zackery McLaughlin PhD', 'Possimus laboriosam qui consequuntur excepturi perspiciatis molestiae pariatur aut a quisquam minima et quia eum.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(75, 'Fritz Larson', 'Et cumque ullam et sequi quae et eos veniam ut blanditiis ullam quod quo illum quibusdam id laudantium.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(76, 'Georgianna Kub IV', 'Porro et ut quae qui et eos nostrum totam rem dolore ad laboriosam.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(77, 'Orlo Grady', 'Fugiat sed voluptatibus perspiciatis vero quo placeat omnis animi facilis dicta.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(78, 'Dr. Van Haag DVM', 'Corrupti laboriosam accusamus quae hic expedita quae vel quos ab.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(79, 'Gerda Borer', 'Itaque laboriosam rerum qui molestias iusto provident temporibus voluptatem corporis voluptas.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(80, 'Dr. Estell Kassulke', 'Ut ullam facere consequatur ipsam voluptatem veniam assumenda ut est quia temporibus maiores et nobis consectetur molestiae voluptatem omnis maxime reprehenderit.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(81, 'Dr. Marianna Donnelly DDS', 'Sit dolor qui praesentium nobis placeat perspiciatis sed aut vel corrupti sapiente.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(82, 'Cielo Davis DDS', 'Pariatur voluptatum at omnis voluptates quod aliquid vel voluptates beatae maxime est quia voluptate tempore omnis corrupti sint voluptatem.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(83, 'Prof. Camden Marks DDS', 'Quidem voluptatem nulla inventore cumque voluptatem in fugit non et deleniti nulla aut.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(84, 'Elliott Hamill', 'Iste et neque qui quidem facere voluptas voluptatum labore sunt ipsum soluta nihil aut.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(85, 'Alejandrin Kling II', 'Itaque ut dolor voluptas eius modi ut rerum aut minima consequatur perferendis illo rem.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(86, 'Dr. Luz Marquardt', 'Aut et consequatur dolor est eaque dolorem harum aut molestiae natus esse quae natus eos harum similique cumque itaque dignissimos sunt.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(87, 'Verdie Smith III', 'Debitis quisquam sapiente necessitatibus explicabo assumenda eaque dolorem similique rerum.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(88, 'Coralie Christiansen', 'Temporibus cum voluptatem at tenetur asperiores repellat id cupiditate at doloribus nostrum vero quasi dolor vel voluptas.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(89, 'Lia Davis', 'Dolor ad illum beatae eius cumque praesentium optio unde eos consequuntur sed non non.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(90, 'Hugh Kilback', 'Libero ut et et et molestias similique est rerum rerum velit quia inventore perspiciatis eum deleniti nihil animi voluptas ut.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(91, 'Madonna Torp', 'Maiores voluptas aut aliquid sit accusantium officia labore et eligendi harum error fugit commodi nulla iure aspernatur nam est.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(92, 'Polly Hudson', 'Ullam ut deleniti quae aut quaerat repellat et facilis reprehenderit sit facere.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(93, 'Vidal Goldner', 'Quae nemo accusantium dolorem mollitia dolorem eos id accusamus in quam.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(94, 'Prof. George Bartoletti', 'Ab nostrum est corrupti qui sunt autem officiis explicabo iste et quis qui magni reiciendis velit dolores.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(95, 'Katrina Monahan PhD', 'Assumenda voluptatibus pariatur cumque adipisci sed delectus sequi quia perferendis fugit beatae et voluptatibus architecto.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(96, 'Gia Conroy V', 'Modi sint cumque dolorem aliquid nihil rerum soluta laboriosam dolor quia fuga accusantium dicta vitae praesentium accusantium.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(97, 'Rahul Deckow', 'Corporis recusandae ipsam cumque eos qui eaque vel et voluptatem velit ipsum ut cupiditate ipsam minima aut modi laborum.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(98, 'Dr. Janis Steuber', 'Vel quasi rerum tempora dicta ea sed quis totam ipsum.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(99, 'Lillie Wuckert', 'Ut libero accusamus quo molestias voluptas enim eum architecto eius quis ut non facere et accusantium beatae facere qui distinctio doloremque.', '2023-06-23 23:25:03', '2023-06-23 23:25:03'),
(100, 'Mathias Gibson', 'Repellendus id consequatur illum iste ipsam vero error temporibus quibusdam molestiae eum non praesentium quia quidem sit ut sint laudantium molestias expedita.', '2023-06-23 23:25:03', '2023-06-23 23:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2023_03_31_100135_create_comments_table', 1),
(18, '2023_06_23_154514_create_product_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_price` decimal(8,2) NOT NULL,
  `selling_price` decimal(8,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`uuid`, `name`, `images`, `purchase_price`, `selling_price`, `stock`, `created_at`, `updated_at`) VALUES
('ebabfea5-cce0-4635-9c3c-628a30a799e3', 'Product 1', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot%202023-03-08%20204304.png?alt=media&token=8a579294-f597-4750-a556-7bdb1313265d', '20000.00', '20000.00', 20, '2023-06-24 00:37:36', '2023-06-24 00:37:36'),
('b30dd9b5-a9f1-45f7-9649-993110741baf', 'Product 2', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot%202023-03-08%20204304.png?alt=media&token=36ed5a84-a690-4fb7-8f91-9bccb8a4c9f0', '10000.00', '100000.00', 10, '2023-06-24 00:37:59', '2023-06-24 00:37:59'),
('056e3c03-1c90-47f2-b1d8-a718ba3ead9c', 'Product 5', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot_20221025_094638.png?alt=media&token=f43f7b6e-91d7-4d4a-a83d-30f8a610dcc5', '20000.00', '20000.00', 20, '2023-06-24 00:41:10', '2023-06-24 00:41:10'),
('e4c8bfc0-929b-484e-be36-89126670c10e', 'Product 9', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot_20221125_133832.png?alt=media&token=d3be85d3-3e3b-4731-b436-325a9e1f8782', '20000.00', '20000.00', 20, '2023-06-24 00:43:29', '2023-06-24 00:43:29'),
('97ac93df-5752-493e-909c-3b95b9d00af6', 'Product ya', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot_20221101_184736.png?alt=media&token=b791116c-7ecb-4c78-bcc6-836fdc989e03', '20000.00', '20000.00', 2, '2023-06-24 03:44:48', '2023-06-24 03:44:48'),
('c94c5deb-7ccd-4b44-a65c-f47d91621141', 'Product 18', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot_20221124_102349.png?alt=media&token=f07f94be-491b-4742-8a61-e40ba20bcd99', '10000.00', '100000.00', 20, '2023-06-24 03:45:23', '2023-06-24 03:45:23'),
('d6647364-dba6-41f4-b85f-2ea63ff73fb9', 'Product lagi', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot_20221103_135307.png?alt=media&token=4b7805d9-2a76-4ec0-8078-7a87f11e038b', '10000.00', '10000.00', 20, '2023-06-24 03:45:47', '2023-06-24 03:45:47'),
('81fd4f90-32dd-44a8-a2df-2581e0906489', 'Product lagi ya', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot%202023-06-12%20204614.png?alt=media&token=0bca52a6-dc77-419a-9cf9-e15dd3f0f7b0', '20000.00', '20000.00', 2, '2023-06-24 03:47:05', '2023-06-24 03:47:05'),
('eb797d20-d84d-4829-ba69-5721677af001', 'Product terus', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot_20221101_185010.png?alt=media&token=0165151f-f2d7-4398-9f6b-46631f971cb6', '20000.00', '20000.00', 5, '2023-06-24 03:47:26', '2023-06-24 03:47:26'),
('44ecfcb9-bc43-457f-96ed-4e95c71f228e', 'Product lagi ya ges ya', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot%202023-03-08%20204304.png?alt=media&token=ba8c697d-20c8-4b38-b785-1c1bd90d46ec', '40000.00', '40000.00', 50, '2023-06-24 03:47:45', '2023-06-24 03:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
