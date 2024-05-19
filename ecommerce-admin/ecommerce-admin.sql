-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 18, 2024 alle 13:41
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce-admin`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `billboard`
--

CREATE TABLE `billboard` (
  `id` varchar(191) NOT NULL,
  `storeId` varchar(191) NOT NULL,
  `label` varchar(191) NOT NULL,
  `imageUrl` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `billboard`
--

INSERT INTO `billboard` (`id`, `storeId`, `label`, `imageUrl`, `createdAt`, `updatedAt`) VALUES
('010bf6af-1073-4dc0-a1b9-6a294fe05946', '1b682704-b392-48bc-be7e-3d23978a605d', 'Accessori indispensabili per ogni occasione', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715984968/nq9a6rzd9ktti68wyala.jpg', '2024-05-17 22:29:32.868', '2024-05-17 22:29:32.868'),
('1ac2e4de-5e0e-4e17-9bb2-23cc6bbf6a92', '1b682704-b392-48bc-be7e-3d23978a605d', 'Resta in forma con i nostri strumenti', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715984643/uj37mwizl1kvrret4kiz.jpg', '2024-05-17 22:24:38.066', '2024-05-17 22:24:38.066'),
('6169003e-88cd-4b9a-926a-2d95f9e1fb8a', '1b682704-b392-48bc-be7e-3d23978a605d', 'Vestiti per ogni tua avventura', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715984541/hhxrcpngi0kg3eimftv4.jpg', '2024-05-17 22:22:25.281', '2024-05-17 22:27:43.785'),
('71256b0b-5f10-490e-b129-7f5ec05bf377', '1b682704-b392-48bc-be7e-3d23978a605d', 'Mangia sano e con gusto', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715984784/nqchfzpqbfxgjfjeakwc.jpg', '2024-05-17 22:26:42.612', '2024-05-17 22:26:42.612'),
('9bebe42b-c8ae-4225-a105-03dc7b58c282', '1b682704-b392-48bc-be7e-3d23978a605d', 'Esplora le nuove proposte estive', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715984283/gqxr1qnsademnmiylge7.jpg', '2024-05-17 21:58:33.955', '2024-05-17 22:18:33.749');

-- --------------------------------------------------------

--
-- Struttura della tabella `category`
--

CREATE TABLE `category` (
  `id` varchar(191) NOT NULL,
  `storeId` varchar(191) NOT NULL,
  `billboardId` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `category`
--

INSERT INTO `category` (`id`, `storeId`, `billboardId`, `name`, `createdAt`, `updatedAt`) VALUES
('3bf0475f-4cce-46a3-aa9e-c0a5bc78bf2d', '1b682704-b392-48bc-be7e-3d23978a605d', '6169003e-88cd-4b9a-926a-2d95f9e1fb8a', 'Vestiti', '2024-05-17 22:19:33.715', '2024-05-17 22:27:37.896'),
('d445fe02-5119-455b-8d4b-a4becd6670e4', '1b682704-b392-48bc-be7e-3d23978a605d', '71256b0b-5f10-490e-b129-7f5ec05bf377', 'Cibo & Bevande', '2024-05-17 22:20:00.038', '2024-05-17 22:27:02.828'),
('f342ce6c-6694-4a0e-924e-b38a6347d5be', '1b682704-b392-48bc-be7e-3d23978a605d', '1ac2e4de-5e0e-4e17-9bb2-23cc6bbf6a92', 'Attrezzi', '2024-05-17 22:19:42.788', '2024-05-17 22:27:27.990'),
('faa93714-a454-42aa-9cb7-51603f5257f5', '1b682704-b392-48bc-be7e-3d23978a605d', '010bf6af-1073-4dc0-a1b9-6a294fe05946', 'Accessori', '2024-05-17 22:19:50.013', '2024-05-17 22:29:39.929');

-- --------------------------------------------------------

--
-- Struttura della tabella `color`
--

CREATE TABLE `color` (
  `id` varchar(191) NOT NULL,
  `storeId` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `color`
--

INSERT INTO `color` (`id`, `storeId`, `name`, `value`, `createdAt`, `updatedAt`) VALUES
('13cf91ad-483d-4e2a-bd1a-238683cb8ae0', '1b682704-b392-48bc-be7e-3d23978a605d', 'Rosa', '#f204ea', '2024-05-17 23:02:14.265', '2024-05-17 23:02:14.265'),
('36b84010-508d-45b5-8ca2-f55ee4c7f2d1', '1b682704-b392-48bc-be7e-3d23978a605d', 'Rosso', '#FF0000', '2024-05-17 22:53:48.114', '2024-05-17 22:53:48.114'),
('4b98b28d-293b-4b93-a44d-564bb3262491', '1b682704-b392-48bc-be7e-3d23978a605d', 'Bianco', '#FFFFFF', '2024-05-17 22:35:50.375', '2024-05-17 22:35:50.375'),
('4ec79685-7e2e-47e2-9f8e-5263e49761db', '1b682704-b392-48bc-be7e-3d23978a605d', 'Giallo', '#eadb07', '2024-05-17 22:52:26.898', '2024-05-17 22:52:26.898'),
('5c5492bb-0a57-41b1-bb1a-0dc27e993a7c', '1b682704-b392-48bc-be7e-3d23978a605d', 'Nero', '#000000', '2024-05-17 22:36:00.932', '2024-05-17 22:36:00.932'),
('802ae89b-4568-460f-b007-046bac18c936', '1b682704-b392-48bc-be7e-3d23978a605d', 'Blu', '#0000FF', '2024-05-17 22:57:19.136', '2024-05-17 22:57:19.136'),
('8575c0d3-aeb7-49dc-bfab-26925fc39a1a', '1b682704-b392-48bc-be7e-3d23978a605d', 'Verde', '#0d4200', '2024-05-17 23:16:03.451', '2024-05-17 23:16:03.451'),
('8993cd8d-a62f-4b55-94d2-d0cdff1c0dc6', '1b682704-b392-48bc-be7e-3d23978a605d', 'Blu Cielo', '#5f7C9E', '2024-05-17 22:39:07.949', '2024-05-17 22:39:07.949'),
('8c16180d-72ac-4a23-bcda-9fb171a4a310', '1b682704-b392-48bc-be7e-3d23978a605d', 'Arancio', '#ed5604', '2024-05-17 22:57:01.454', '2024-05-17 22:57:01.454'),
('b837ecbb-bc7d-416c-9ee2-17286d71f16a', '1b682704-b392-48bc-be7e-3d23978a605d', 'Verde', '#D8E965', '2024-05-17 22:38:13.833', '2024-05-17 22:38:13.833'),
('db5e22b2-c991-47a3-a1a1-6d4f71da5bfa', '1b682704-b392-48bc-be7e-3d23978a605d', 'Grigio', '#86878C', '2024-05-17 22:37:10.514', '2024-05-17 22:37:10.514');

-- --------------------------------------------------------

--
-- Struttura della tabella `image`
--

CREATE TABLE `image` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `image`
--

INSERT INTO `image` (`id`, `productId`, `url`, `createdAt`, `updatedAt`) VALUES
('154b06b1-e5ef-4d39-9e0c-28ab83a34bbc', '32cc6d0e-8f8c-4ab8-8613-7db81e13b912', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715987474/dcm2mtlc8oviwrjcwbsm.jpg', '2024-05-17 23:11:43.837', '2024-05-17 23:11:43.837'),
('1c2f5484-ae67-421c-8b97-e329bdde1c9e', 'a646c0ab-e38b-434c-8905-188bafa0c62e', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715987714/yszgo4wbiw5cshocqaug.jpg', '2024-05-17 23:16:16.712', '2024-05-17 23:16:16.712'),
('1e7a8811-855d-45d7-848f-261d024b6272', 'f23d0ea0-5486-4ad4-9160-91b13891bbd1', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715985813/vbljvdf8jmrcaarx78fa.jpg', '2024-05-17 22:43:36.634', '2024-05-17 22:43:36.634'),
('1ee6e6a7-20d8-431b-ba02-2e4fcd2bf514', 'eb10d259-c2bc-4f46-bd54-8750daca78d6', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715986554/dgmcmj8nyzanlir1lhuq.jpg', '2024-05-17 22:57:44.731', '2024-05-17 22:57:44.731'),
('231f72e7-ecf8-41b3-8a4a-b242f319040e', '9d92c77e-c702-4f7f-8282-a646e7c9f787', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715986817/b3bo732e6yovbacuzeg6.jpg', '2024-05-17 23:00:19.537', '2024-05-17 23:00:19.537'),
('3d435059-885a-49dc-bfbe-e3b5013de4ac', '521503cb-2c15-47cf-b8d0-b24374484c69', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715988221/bfwk6zsqlhdo0prsuple.png', '2024-05-17 23:24:05.116', '2024-05-17 23:24:05.116'),
('3fb78b9c-299d-48c7-bb9a-1850c7c0f647', '4be16394-9a02-4510-a81d-b47a8afa8ed4', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715986861/dz8iyeuhzhlqybc0icxe.jpg', '2024-05-17 23:02:24.880', '2024-05-17 23:02:24.880'),
('6745cf7a-083d-4e40-b3e5-543a9fedf9fc', 'e8d307e5-1da6-4c63-857b-a27f2b7e6d55', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1716031581/xgmhdcumyhwdjcltolic.jpg', '2024-05-18 11:26:35.871', '2024-05-18 11:26:35.871'),
('6a5bf317-d2a4-48cc-bea7-7592de4d2fbd', '705041af-2051-4a73-81a7-d43250f9e1a6', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715987580/stcg5akq34y6iwe97mcd.jpg', '2024-05-17 23:13:32.517', '2024-05-17 23:13:32.517'),
('7b97a258-6c9f-40e4-bea6-5b1982fd9c1c', 'eeb5b1ca-c41e-4061-a7c8-7d1322f8e019', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715985997/vlht38o2qfebxn3f9nyn.jpg', '2024-05-17 22:46:42.243', '2024-05-17 22:46:42.243'),
('81132d50-6c6b-454d-9e27-9c703b6ef427', '718022b0-3f7d-4969-b379-a9be7eb15b03', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715988308/pqw8vjmzuqoliqzeusrl.jpg', '2024-05-17 23:25:27.391', '2024-05-17 23:25:27.391'),
('84bb2d53-5ea5-4465-ad78-32ead7e657b7', 'd9d16ccf-7a72-4321-9458-9d458afe5256', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715987344/tdhpemlzknqomroc6xfe.jpg', '2024-05-17 23:09:37.871', '2024-05-17 23:09:37.871'),
('89bf852a-f25e-42f7-bd0f-f6467db6d14e', '22ad9a4d-17d1-4ae4-a3c2-3064a6a0d59f', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715987433/htwkqdyglzdoujaouzzx.jpg', '2024-05-17 23:11:06.796', '2024-05-17 23:11:06.796'),
('8b14f0c6-b3fe-46ea-a9d7-b9f7cdb9c621', 'eeb5b1ca-c41e-4061-a7c8-7d1322f8e019', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715985997/vwth2knfkyaen5ydmao2.jpg', '2024-05-17 22:46:42.243', '2024-05-17 22:46:42.243'),
('9a9011a1-c976-4000-9860-83179332dcfa', 'f0427b74-6135-459e-a184-05f02c85a7df', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715988361/w7mayk8xox6tfs4d0agf.jpg', '2024-05-17 23:26:20.581', '2024-05-17 23:26:20.581'),
('a5e09290-9b4d-4a78-a3b9-cfd6f9f8849e', 'ca71a3b0-7ecb-437e-a952-e4b85e96872e', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715987980/b9akho1tkj7lgqvbxpcs.jpg', '2024-05-17 23:20:00.121', '2024-05-17 23:20:00.121'),
('a8e79a04-0962-4fe1-9cc8-12472ca26271', '7f7e5e0e-bf14-4721-8528-b23ce22b49f7', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715987099/c94nex6ze8fnv9alooit.jpg', '2024-05-17 23:05:32.062', '2024-05-17 23:05:32.062'),
('b6818954-f956-4d4e-a1b1-d9907c07f6a6', '15315c39-350a-4b45-a9f8-629e236710c7', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715987888/bwcnztgnbf803fubdkjc.png', '2024-05-17 23:18:42.421', '2024-05-17 23:18:42.421'),
('ba8f712e-07aa-4dfe-9edb-0c9f1b52e5c4', '88f30f3f-f063-472f-b4db-0bae321e8a36', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715987166/dq03sfojmhe4cvge1pvt.jpg', '2024-05-17 23:06:37.764', '2024-05-17 23:06:37.764'),
('c590ef41-e5a4-43a0-8922-dad5719740d0', '87cd7415-5fe5-43da-af16-4ae2cc517081', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715987005/vxpmzs8r9piezfajxzen.jpg', '2024-05-17 23:04:04.421', '2024-05-17 23:04:04.421'),
('c8f14028-1f69-4300-bfc9-354d8470df26', '3b3d8163-7804-4cc6-876b-43695cd5d4d6', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715986437/oik2gtbvkkodvqbarm96.jpg', '2024-05-17 22:54:32.707', '2024-05-17 22:54:32.707'),
('c9727f09-b36a-41cb-986f-97a93086db14', '0b72c3bd-aedd-4369-97ae-5ca9ee60aeb7', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715988064/j9nulaj6y4pjtnumrhuf.jpg', '2024-05-17 23:21:32.221', '2024-05-17 23:21:32.221'),
('ce1f5264-f5cb-4bfb-a749-1d95cf47aced', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715988479/uibpahbgkltuphzqcnpg.jpg', '2024-05-17 23:28:15.468', '2024-05-17 23:28:15.468'),
('ce924678-0d4d-4c34-afd5-0ce72109482a', '79faa8c8-422a-4a62-b829-5647974bf9f8', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715987386/lazmpwun6h1vwa1fmzj2.jpg', '2024-05-17 23:10:09.905', '2024-05-17 23:10:09.905'),
('e07793f8-bd4c-40a6-aa00-e5c1ae48f838', '67d3998f-d38e-4836-ac05-38698d91f828', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715986262/sfxrmrnw6ojpdcduifnt.jpg', '2024-05-17 23:14:07.666', '2024-05-17 23:14:07.666'),
('e8f2454b-7fed-43aa-9e59-f83dbd4b633f', 'e5f1b525-0daa-4fa5-9344-7a13e03c68c9', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715986066/i4ciqrempt9szmkr1opl.jpg', '2024-05-17 22:48:37.264', '2024-05-17 22:48:37.264'),
('ea75016b-afc0-4d4f-b9c1-a983f44e1feb', 'e5f1b525-0daa-4fa5-9344-7a13e03c68c9', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715986066/ewby1tiolhsnkgar9vi5.jpg', '2024-05-17 22:48:37.264', '2024-05-17 22:48:37.264'),
('ef84f679-5791-49cc-9778-54bebb6e89a0', 'dfe32462-fbf0-4dc0-bb54-81a0e121903c', 'https://res.cloudinary.com/duzhmhmsw/image/upload/v1715988143/gngg5rxjakkuposhdyzk.jpg', '2024-05-17 23:22:44.097', '2024-05-17 23:22:44.097');

-- --------------------------------------------------------

--
-- Struttura della tabella `order`
--

CREATE TABLE `order` (
  `id` varchar(191) NOT NULL,
  `storeId` varchar(191) NOT NULL,
  `isPaid` tinyint(1) NOT NULL DEFAULT 0,
  `phone` varchar(191) NOT NULL DEFAULT '',
  `address` varchar(191) NOT NULL DEFAULT '',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `order`
--

INSERT INTO `order` (`id`, `storeId`, `isPaid`, `phone`, `address`, `createdAt`, `updatedAt`) VALUES
('125239ce-f748-4281-b2cf-2a312375fce2', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:49:57.284', '2024-05-17 23:49:57.284'),
('1d4d9e34-1eed-4cc4-a9dc-c8a31c9c265a', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:38:09.116', '2024-05-17 23:38:09.116'),
('216da4a5-3fc3-4e2a-a8be-cb15ddc8388a', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-18 11:10:59.415', '2024-05-18 11:10:59.415'),
('2310c591-3149-455b-96c3-3631877e83a8', '1b682704-b392-48bc-be7e-3d23978a605d', 1, '+393248723114', 'Via Stefano Molli, Borgomanero, NO, 28021, IT', '2024-05-18 10:02:45.768', '2024-05-18 10:03:11.729'),
('30921164-a566-4592-93a6-b7c2dab5877d', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:49:56.964', '2024-05-17 23:49:56.964'),
('36de9555-0afc-4c56-b720-57d6c9665e12', '1b682704-b392-48bc-be7e-3d23978a605d', 1, '+393248723114', 'Via Stefano Molli, Borgomanero, NO, 28021, IT', '2024-05-18 11:13:02.616', '2024-05-18 11:13:08.243'),
('37437662-10d0-44bd-b213-d5a675bf263c', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:58:00.372', '2024-05-17 23:58:00.372'),
('38b2fefa-cf0f-4dd8-ab4f-5854cf0b5393', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:49:57.743', '2024-05-17 23:49:57.743'),
('3c1c20b1-a0b2-406d-bb75-963516b30e43', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:49:56.659', '2024-05-17 23:49:56.659'),
('4280a388-dec5-4200-826c-6cfc047f9997', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-18 11:05:24.071', '2024-05-18 11:05:24.071'),
('4abaf14e-35ca-4d96-b831-42719ded56d8', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:41:13.169', '2024-05-17 23:41:13.169'),
('501e221c-95dc-4c04-a39a-60df1333e249', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:56:14.704', '2024-05-17 23:56:14.704'),
('547a3c02-3cd0-4cf5-b0d1-3ec63fc7d6fd', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:41:17.308', '2024-05-17 23:41:17.308'),
('575dfdc9-8cd8-43cb-a9e7-860b20c778d3', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:50:43.621', '2024-05-17 23:50:43.621'),
('6460d474-6096-468e-8ff8-17029f857d60', '1b682704-b392-48bc-be7e-3d23978a605d', 1, '+393248723114', 'Via Stefano Mollica, Ciaculli, PA, 90121, IT', '2024-05-18 00:14:24.991', '2024-05-18 00:15:34.718'),
('669998ab-9877-4653-a130-d115757c576c', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-18 00:01:49.880', '2024-05-18 00:01:49.880'),
('74753fc2-e904-4894-800e-c70605a0deb8', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:49:51.134', '2024-05-17 23:49:51.134'),
('811b0bf2-9a70-4993-bcb2-e6955fd53d3e', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:37:44.136', '2024-05-17 23:37:44.136'),
('837ff77d-a824-4d76-8b66-fb90ccf85d6a', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-18 09:37:16.581', '2024-05-18 09:37:16.581'),
('872df40d-ee74-4cad-8f85-9779f206fb6e', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:37:54.010', '2024-05-17 23:37:54.010'),
('8849aa8b-b21a-4848-bfc6-b0df93219f36', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:31:03.046', '2024-05-17 23:31:03.046'),
('915aff6b-486a-4fd2-8704-6c13e0a5dbf2', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:38:11.171', '2024-05-17 23:38:11.171'),
('961ff7f8-4e27-4b5b-ae04-9216349b479e', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-18 09:34:53.764', '2024-05-18 09:34:53.764'),
('9a7c23f6-54c1-4d20-9795-972d5bfa99df', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-18 10:01:16.988', '2024-05-18 10:01:16.988'),
('a2c7abab-512a-4f54-bc5a-f012fc537437', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:50:01.392', '2024-05-17 23:50:01.392'),
('a5fbf2fc-eb18-45a2-9156-b77335a8eb60', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-18 00:09:41.180', '2024-05-18 00:09:41.180'),
('ac5ce6d9-5cf3-4557-9018-8d6057e13c9b', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:49:56.808', '2024-05-17 23:49:56.808'),
('aeb06573-b783-4412-a689-6157ccb876ae', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:37:58.130', '2024-05-17 23:37:58.130'),
('b05fa4fc-3a10-413e-88b2-12313167c8e8', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:49:57.122', '2024-05-17 23:49:57.122'),
('b36e70ab-c57c-47b0-9004-1bcf8c594d33', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:58:04.502', '2024-05-17 23:58:04.502'),
('b709a304-caee-4184-97cb-dcd66a158df6', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:37:37.437', '2024-05-17 23:37:37.437'),
('c40e0c2a-e28c-433c-b112-3198c173fff1', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:49:57.584', '2024-05-17 23:49:57.584'),
('c87ad48f-d539-4e82-85a7-2acd3c984cb2', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:39:28.626', '2024-05-17 23:39:28.626'),
('ca4e7714-0d7d-4d69-880c-88c8456a1cb5', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:55:14.746', '2024-05-17 23:55:14.746'),
('d1bf63b6-0e6b-4251-b090-1646cd2480b9', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:49:57.450', '2024-05-17 23:49:57.450'),
('d6f3b59b-343f-46fb-b531-7501f19daa99', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:49:54.887', '2024-05-17 23:49:54.887'),
('d8412b72-f1fd-4537-8289-3ea32c865eee', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:49:58.052', '2024-05-17 23:49:58.052'),
('f5524b43-cdd2-48cb-9864-a6d7a1aba3aa', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:57:58.239', '2024-05-17 23:57:58.239'),
('f8253427-2985-47bd-9e92-1c23a58140c4', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-18 11:09:33.816', '2024-05-18 11:09:33.816'),
('fd9ba929-0396-4740-b68f-186d933c11e4', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-18 11:12:28.150', '2024-05-18 11:12:28.150'),
('fdd61135-3006-4e35-b8d5-8434c7ab8af0', '1b682704-b392-48bc-be7e-3d23978a605d', 0, '', '', '2024-05-17 23:49:57.893', '2024-05-17 23:49:57.893');

-- --------------------------------------------------------

--
-- Struttura della tabella `orderitem`
--

CREATE TABLE `orderitem` (
  `id` varchar(191) NOT NULL,
  `orderId` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `orderitem`
--

INSERT INTO `orderitem` (`id`, `orderId`, `productId`) VALUES
('06b3b72c-9ef7-4512-8022-eee0a8bd5d74', '4280a388-dec5-4200-826c-6cfc047f9997', '0b72c3bd-aedd-4369-97ae-5ca9ee60aeb7'),
('06f10eb1-547c-4c47-a809-0c4976fc7a4e', 'a2c7abab-512a-4f54-bc5a-f012fc537437', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('0a870159-7621-43b3-a635-73711c9cac56', 'c87ad48f-d539-4e82-85a7-2acd3c984cb2', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('0b2d1941-4af0-4eeb-9cd7-e6ecd38268e1', 'd8412b72-f1fd-4537-8289-3ea32c865eee', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('0c30c17f-602e-424f-8db9-4ff9541261df', 'fd9ba929-0396-4740-b68f-186d933c11e4', 'dfe32462-fbf0-4dc0-bb54-81a0e121903c'),
('0cb7f3d9-c9f1-4013-bf00-a0bf49dbb64a', '9a7c23f6-54c1-4d20-9795-972d5bfa99df', '4be16394-9a02-4510-a81d-b47a8afa8ed4'),
('0d6497d8-baa7-43bc-a4a1-43a690e1869e', 'b709a304-caee-4184-97cb-dcd66a158df6', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('0e8a3b81-c7f1-48d7-a026-ed195442b242', '1d4d9e34-1eed-4cc4-a9dc-c8a31c9c265a', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('108c7caf-c22f-43b3-8ced-843c03406438', 'a5fbf2fc-eb18-45a2-9156-b77335a8eb60', 'eeb5b1ca-c41e-4061-a7c8-7d1322f8e019'),
('14e7dc67-a4dc-4532-8d6e-3092e5dac5a8', '915aff6b-486a-4fd2-8704-6c13e0a5dbf2', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('150bb1c5-5dfb-4156-ad9e-984ba37f0d9c', 'a5fbf2fc-eb18-45a2-9156-b77335a8eb60', 'e5f1b525-0daa-4fa5-9344-7a13e03c68c9'),
('160c250a-d062-4ff9-9891-f4d538c9ab42', '74753fc2-e904-4894-800e-c70605a0deb8', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('1666d347-4263-4d5d-a008-81f792e4bf00', '501e221c-95dc-4c04-a39a-60df1333e249', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('1976a282-dd2f-4d06-ae2e-c0d84912daaf', 'a5fbf2fc-eb18-45a2-9156-b77335a8eb60', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('1c10977a-f17f-42fa-bc3f-07b017f2f8be', '837ff77d-a824-4d76-8b66-fb90ccf85d6a', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('1f280a5a-9c0c-44e6-b49f-0873766a27da', 'ca4e7714-0d7d-4d69-880c-88c8456a1cb5', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('1fb99ab2-1de5-4e29-b262-cafb78e0d086', '30921164-a566-4592-93a6-b7c2dab5877d', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('20eb5ee8-9567-4566-924f-96c0bebec8b5', '9a7c23f6-54c1-4d20-9795-972d5bfa99df', '9d92c77e-c702-4f7f-8282-a646e7c9f787'),
('2535d912-9d15-476a-a865-19a0524ff699', '575dfdc9-8cd8-43cb-a9e7-860b20c778d3', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('276720dd-94f6-4552-a203-ee851f6ea182', '547a3c02-3cd0-4cf5-b0d1-3ec63fc7d6fd', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('27a1ad80-6998-4694-95d1-8b28147ae684', 'f5524b43-cdd2-48cb-9864-a6d7a1aba3aa', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('2f2656e8-09ad-4ed5-a0f4-2eefc54b83df', '669998ab-9877-4653-a130-d115757c576c', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('33f39573-96bc-41e4-95bc-6c4fe2d0c24f', '872df40d-ee74-4cad-8f85-9779f206fb6e', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('358e4bd2-2408-4566-abae-f8644b99cc45', 'b05fa4fc-3a10-413e-88b2-12313167c8e8', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('389c4870-9c56-43d8-a556-95fcfae13ce2', '1d4d9e34-1eed-4cc4-a9dc-c8a31c9c265a', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('3af5192e-8f7c-4816-89f8-b053e10f7a49', '37437662-10d0-44bd-b213-d5a675bf263c', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('4fb04722-ca40-49e7-ac3b-d094fa92fe59', '575dfdc9-8cd8-43cb-a9e7-860b20c778d3', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('526103b6-c2da-4c17-b522-ad890b25f9ce', '30921164-a566-4592-93a6-b7c2dab5877d', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('55be833c-4c71-4a40-889c-424d8c790bf9', '4abaf14e-35ca-4d96-b831-42719ded56d8', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('55cdacba-0767-40d8-bc91-a7e53af4f1a4', '74753fc2-e904-4894-800e-c70605a0deb8', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('5b8cf9db-b5ff-4281-8003-09a5f26e7828', '4280a388-dec5-4200-826c-6cfc047f9997', '7f7e5e0e-bf14-4721-8528-b23ce22b49f7'),
('637da5b0-0d0b-4891-80df-3770dd1424a1', 'c40e0c2a-e28c-433c-b112-3198c173fff1', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('648c1ee6-f2b4-4567-a400-445c12477321', '8849aa8b-b21a-4848-bfc6-b0df93219f36', 'f23d0ea0-5486-4ad4-9160-91b13891bbd1'),
('648d8e99-94b7-406d-9655-0459a3987c55', '4abaf14e-35ca-4d96-b831-42719ded56d8', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('6db2209e-1090-4e2c-b4ed-36f26d63fd88', '216da4a5-3fc3-4e2a-a8be-cb15ddc8388a', '521503cb-2c15-47cf-b8d0-b24374484c69'),
('6f1110fe-126f-4304-bb79-38d8030bdf4a', '837ff77d-a824-4d76-8b66-fb90ccf85d6a', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('7499322f-0fbd-4c22-ae9e-f469f28b3697', '125239ce-f748-4281-b2cf-2a312375fce2', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('798cbf80-a938-461e-b09f-f01a9ca1cfc9', 'a5fbf2fc-eb18-45a2-9156-b77335a8eb60', 'f23d0ea0-5486-4ad4-9160-91b13891bbd1'),
('7a5fc311-b3a3-4a42-8ea4-4da9a925b84b', '6460d474-6096-468e-8ff8-17029f857d60', 'eeb5b1ca-c41e-4061-a7c8-7d1322f8e019'),
('7e46dc97-c704-44c8-a1eb-132eea27e283', '2310c591-3149-455b-96c3-3631877e83a8', 'a646c0ab-e38b-434c-8905-188bafa0c62e'),
('7e74cec5-e9cb-4eab-9530-ebf4e9851a1c', '3c1c20b1-a0b2-406d-bb75-963516b30e43', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('81165796-a1d1-44e9-918f-e7d92547166b', '8849aa8b-b21a-4848-bfc6-b0df93219f36', '22ad9a4d-17d1-4ae4-a3c2-3064a6a0d59f'),
('88d551c0-4ca0-467d-9221-4c8d8da007a0', 'f8253427-2985-47bd-9e92-1c23a58140c4', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('897d79e5-b758-46c1-ab08-369d201ab760', 'aeb06573-b783-4412-a689-6157ccb876ae', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('89c6842c-9e9d-4aad-8699-63b527313595', '3c1c20b1-a0b2-406d-bb75-963516b30e43', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('8eabe595-7fd1-489e-ae28-27082d44083e', 'ac5ce6d9-5cf3-4557-9018-8d6057e13c9b', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('9336610e-bdc2-40bf-9532-22a39f673e06', '961ff7f8-4e27-4b5b-ae04-9216349b479e', '0b72c3bd-aedd-4369-97ae-5ca9ee60aeb7'),
('95d82713-38bb-492b-bac9-79e523123099', 'ac5ce6d9-5cf3-4557-9018-8d6057e13c9b', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('9c2909f0-6039-4ab6-833f-be7ef8d7989b', 'f5524b43-cdd2-48cb-9864-a6d7a1aba3aa', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('9e557970-1c07-4dc9-a61a-fc633cb6765b', 'ca4e7714-0d7d-4d69-880c-88c8456a1cb5', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('9e8a810d-b535-4b5a-ac0a-c5d853e8b996', 'b36e70ab-c57c-47b0-9004-1bcf8c594d33', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('a227f104-1f4a-467c-9d72-7d95c4c1cce8', '501e221c-95dc-4c04-a39a-60df1333e249', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('a253cb96-b922-44e1-9dde-4d305042f29f', '915aff6b-486a-4fd2-8704-6c13e0a5dbf2', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('a3752cb6-32a0-4fca-ad7e-4aa2e3ff4bea', '547a3c02-3cd0-4cf5-b0d1-3ec63fc7d6fd', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('a37e156b-890b-4121-917a-d456d53f4c0e', 'd1bf63b6-0e6b-4251-b090-1646cd2480b9', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('a390c2de-30c3-450b-9217-d05b2b33577d', '38b2fefa-cf0f-4dd8-ab4f-5854cf0b5393', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('a49838ad-49b1-45fc-8bfc-78b72ad01525', 'b36e70ab-c57c-47b0-9004-1bcf8c594d33', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('a725cd88-991a-4a9e-8622-01ffd7d7eba2', 'c87ad48f-d539-4e82-85a7-2acd3c984cb2', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('af023610-593d-40c6-914d-5495fbaca196', 'f8253427-2985-47bd-9e92-1c23a58140c4', '0b72c3bd-aedd-4369-97ae-5ca9ee60aeb7'),
('b029cbf4-fc1e-43b9-a75f-af873581e5f0', '4280a388-dec5-4200-826c-6cfc047f9997', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('b76ff111-bb5b-4e9b-b16f-d59b119773b1', 'c40e0c2a-e28c-433c-b112-3198c173fff1', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('b90e6bee-ef9b-4605-8455-b73d02862a87', '8849aa8b-b21a-4848-bfc6-b0df93219f36', '705041af-2051-4a73-81a7-d43250f9e1a6'),
('bc1449f9-1fe8-4797-91a6-5dbe6dd8b807', 'b05fa4fc-3a10-413e-88b2-12313167c8e8', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('bd00df8c-62a4-41c3-98c8-67ca786f93a7', 'fdd61135-3006-4e35-b8d5-8434c7ab8af0', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('bf46c5bb-e31e-4c27-89a8-8f20ed059469', '669998ab-9877-4653-a130-d115757c576c', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('c11bf2e0-6285-4281-b3ac-03a59e0a2d89', 'd6f3b59b-343f-46fb-b531-7501f19daa99', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('c94346b3-edcf-4aa5-9984-3395f9a8252b', 'f8253427-2985-47bd-9e92-1c23a58140c4', '7f7e5e0e-bf14-4721-8528-b23ce22b49f7'),
('d4094fae-0453-4795-aea9-4089225f4839', 'a2c7abab-512a-4f54-bc5a-f012fc537437', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('ddfaa0f6-8140-41b3-b707-91b449ce0de3', '37437662-10d0-44bd-b213-d5a675bf263c', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('defeced0-0d28-40bf-b4ca-3d21c687621e', 'd6f3b59b-343f-46fb-b531-7501f19daa99', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('e01f7130-a8be-4015-92e6-c64a9b06c271', '4280a388-dec5-4200-826c-6cfc047f9997', 'dfe32462-fbf0-4dc0-bb54-81a0e121903c'),
('e189356b-b05e-4680-833c-3a58d1edef6b', 'd8412b72-f1fd-4537-8289-3ea32c865eee', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('e285df8a-ed10-4da8-be8f-dd2f935088f8', '38b2fefa-cf0f-4dd8-ab4f-5854cf0b5393', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('e78e8c42-0dd9-42df-ba4c-b61f06dc928d', 'd1bf63b6-0e6b-4251-b090-1646cd2480b9', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('e906a5b5-431b-4883-a70b-fc392812cda0', '36de9555-0afc-4c56-b720-57d6c9665e12', '0b72c3bd-aedd-4369-97ae-5ca9ee60aeb7'),
('e9098f07-b5f3-47ce-b841-f314ebe7b959', 'fdd61135-3006-4e35-b8d5-8434c7ab8af0', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905'),
('ef5fca7a-fdc7-4c10-977e-2edd7951c4c3', '125239ce-f748-4281-b2cf-2a312375fce2', 'f0427b74-6135-459e-a184-05f02c85a7df'),
('f64185a4-49d8-4a46-b2c2-8697786055c3', '8849aa8b-b21a-4848-bfc6-b0df93219f36', '4be16394-9a02-4510-a81d-b47a8afa8ed4'),
('fa2ac42c-a324-44d7-afdc-a0979d278e38', 'f8253427-2985-47bd-9e92-1c23a58140c4', 'dfe32462-fbf0-4dc0-bb54-81a0e121903c'),
('fae46c25-7fa2-43a5-b8c7-aebae8753c39', '9a7c23f6-54c1-4d20-9795-972d5bfa99df', 'eb10d259-c2bc-4f46-bd54-8750daca78d6'),
('fd7f4038-ba90-49fe-ac23-89b87632ab38', '811b0bf2-9a70-4993-bcb2-e6955fd53d3e', 'a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905');

-- --------------------------------------------------------

--
-- Struttura della tabella `product`
--

CREATE TABLE `product` (
  `id` varchar(191) NOT NULL,
  `storeId` varchar(191) NOT NULL,
  `categoryId` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` decimal(65,30) NOT NULL,
  `isFeatured` tinyint(1) NOT NULL DEFAULT 0,
  `isArchived` tinyint(1) NOT NULL DEFAULT 0,
  `sizeId` varchar(191) NOT NULL,
  `colorId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `product`
--

INSERT INTO `product` (`id`, `storeId`, `categoryId`, `name`, `price`, `isFeatured`, `isArchived`, `sizeId`, `colorId`, `createdAt`, `updatedAt`) VALUES
('0b72c3bd-aedd-4369-97ae-5ca9ee60aeb7', '1b682704-b392-48bc-be7e-3d23978a605d', 'faa93714-a454-42aa-9cb7-51603f5257f5', 'Magnesite liquida', 23.500000000000000000000000000000, 0, 1, 'f6dc698c-c71d-4480-9e5d-4a9abdfcd54c', '4b98b28d-293b-4b93-a44d-564bb3262491', '2024-05-17 23:21:32.221', '2024-05-18 11:13:08.254'),
('15315c39-350a-4b45-a9f8-629e236710c7', '1b682704-b392-48bc-be7e-3d23978a605d', 'faa93714-a454-42aa-9cb7-51603f5257f5', 'Smartwatch', 99.989999999999990000000000000000, 0, 0, 'cfe427f5-538f-48bf-846d-a1025961d5fb', '8c16180d-72ac-4a23-bcda-9fb171a4a310', '2024-05-17 23:18:42.421', '2024-05-17 23:18:42.421'),
('22ad9a4d-17d1-4ae4-a3c2-3064a6a0d59f', '1b682704-b392-48bc-be7e-3d23978a605d', 'f342ce6c-6694-4a0e-924e-b38a6347d5be', 'Corda', 9.990000000000000000000000000000, 0, 0, 'cfe427f5-538f-48bf-846d-a1025961d5fb', '4b98b28d-293b-4b93-a44d-564bb3262491', '2024-05-17 23:11:06.796', '2024-05-17 23:11:06.796'),
('32cc6d0e-8f8c-4ab8-8613-7db81e13b912', '1b682704-b392-48bc-be7e-3d23978a605d', 'f342ce6c-6694-4a0e-924e-b38a6347d5be', 'Panca reclinabile', 89.989999999999990000000000000000, 0, 0, 'cfe427f5-538f-48bf-846d-a1025961d5fb', '5c5492bb-0a57-41b1-bb1a-0dc27e993a7c', '2024-05-17 23:11:43.837', '2024-05-17 23:11:43.837'),
('3b3d8163-7804-4cc6-876b-43695cd5d4d6', '1b682704-b392-48bc-be7e-3d23978a605d', 'f342ce6c-6694-4a0e-924e-b38a6347d5be', 'Braccioli', 6.200000000000000000000000000000, 1, 0, 'f6dc698c-c71d-4480-9e5d-4a9abdfcd54c', '36b84010-508d-45b5-8ca2-f55ee4c7f2d1', '2024-05-17 22:54:32.707', '2024-05-17 22:54:32.707'),
('4be16394-9a02-4510-a81d-b47a8afa8ed4', '1b682704-b392-48bc-be7e-3d23978a605d', 'd445fe02-5119-455b-8d4b-a4becd6670e4', 'Borraccia', 10.990000000000000000000000000000, 1, 0, '3ea41cf1-ddd6-4e9a-bf9b-11fc53ea869d', '13cf91ad-483d-4e2a-bd1a-238683cb8ae0', '2024-05-17 23:01:20.686', '2024-05-17 23:02:24.873'),
('521503cb-2c15-47cf-b8d0-b24374484c69', '1b682704-b392-48bc-be7e-3d23978a605d', 'd445fe02-5119-455b-8d4b-a4becd6670e4', 'Biscotti proteici', 3.990000000000000000000000000000, 0, 0, 'f6dc698c-c71d-4480-9e5d-4a9abdfcd54c', '4b98b28d-293b-4b93-a44d-564bb3262491', '2024-05-17 23:24:05.116', '2024-05-17 23:24:05.116'),
('67d3998f-d38e-4836-ac05-38698d91f828', '1b682704-b392-48bc-be7e-3d23978a605d', 'f342ce6c-6694-4a0e-924e-b38a6347d5be', 'Palla da Pallavolo', 26.990000000000000000000000000000, 1, 0, '3ea41cf1-ddd6-4e9a-bf9b-11fc53ea869d', '802ae89b-4568-460f-b007-046bac18c936', '2024-05-17 22:52:00.876', '2024-05-17 23:14:07.662'),
('705041af-2051-4a73-81a7-d43250f9e1a6', '1b682704-b392-48bc-be7e-3d23978a605d', 'f342ce6c-6694-4a0e-924e-b38a6347d5be', 'Dischi', 599.990000000000000000000000000000, 0, 0, 'cfe427f5-538f-48bf-846d-a1025961d5fb', '5c5492bb-0a57-41b1-bb1a-0dc27e993a7c', '2024-05-17 23:13:32.517', '2024-05-17 23:13:32.517'),
('718022b0-3f7d-4969-b379-a9be7eb15b03', '1b682704-b392-48bc-be7e-3d23978a605d', '3bf0475f-4cce-46a3-aa9e-c0a5bc78bf2d', 'Felpa', 22.500000000000000000000000000000, 0, 0, '64f114ab-05f9-49c9-9520-56f03a288584', 'db5e22b2-c991-47a3-a1a1-6d4f71da5bfa', '2024-05-17 23:25:27.391', '2024-05-17 23:25:27.391'),
('79faa8c8-422a-4a62-b829-5647974bf9f8', '1b682704-b392-48bc-be7e-3d23978a605d', 'f342ce6c-6694-4a0e-924e-b38a6347d5be', 'Manubri', 24.990000000000000000000000000000, 0, 0, '3ea41cf1-ddd6-4e9a-bf9b-11fc53ea869d', '5c5492bb-0a57-41b1-bb1a-0dc27e993a7c', '2024-05-17 23:10:09.905', '2024-05-17 23:10:09.905'),
('7f7e5e0e-bf14-4721-8528-b23ce22b49f7', '1b682704-b392-48bc-be7e-3d23978a605d', 'd445fe02-5119-455b-8d4b-a4becd6670e4', 'Creatina in polvere', 11.990000000000000000000000000000, 0, 0, '3ea41cf1-ddd6-4e9a-bf9b-11fc53ea869d', '36b84010-508d-45b5-8ca2-f55ee4c7f2d1', '2024-05-17 23:05:32.062', '2024-05-17 23:05:32.062'),
('87cd7415-5fe5-43da-af16-4ae2cc517081', '1b682704-b392-48bc-be7e-3d23978a605d', 'd445fe02-5119-455b-8d4b-a4becd6670e4', 'Proteine in polvere', 37.340000000000000000000000000000, 0, 0, '64f114ab-05f9-49c9-9520-56f03a288584', '5c5492bb-0a57-41b1-bb1a-0dc27e993a7c', '2024-05-17 23:04:04.421', '2024-05-17 23:04:04.421'),
('88f30f3f-f063-472f-b4db-0bae321e8a36', '1b682704-b392-48bc-be7e-3d23978a605d', 'd445fe02-5119-455b-8d4b-a4becd6670e4', 'Trenbolone Acetato', 55.550000000000000000000000000000, 0, 1, 'f6dc698c-c71d-4480-9e5d-4a9abdfcd54c', '4ec79685-7e2e-47e2-9f8e-5263e49761db', '2024-05-17 23:06:37.764', '2024-05-17 23:06:37.764'),
('9d92c77e-c702-4f7f-8282-a646e7c9f787', '1b682704-b392-48bc-be7e-3d23978a605d', 'faa93714-a454-42aa-9cb7-51603f5257f5', 'Occhiali', 32.990000000000000000000000000000, 1, 0, '3ea41cf1-ddd6-4e9a-bf9b-11fc53ea869d', '5c5492bb-0a57-41b1-bb1a-0dc27e993a7c', '2024-05-17 22:59:30.282', '2024-05-17 23:00:19.533'),
('a05e77fa-f9e5-4ee0-89e4-0e1d8d1b7905', '1b682704-b392-48bc-be7e-3d23978a605d', '3bf0475f-4cce-46a3-aa9e-c0a5bc78bf2d', 'Pantaloncini', 8.789999999999999000000000000000, 0, 0, 'f6dc698c-c71d-4480-9e5d-4a9abdfcd54c', '36b84010-508d-45b5-8ca2-f55ee4c7f2d1', '2024-05-17 23:28:15.468', '2024-05-17 23:28:15.468'),
('a646c0ab-e38b-434c-8905-188bafa0c62e', '1b682704-b392-48bc-be7e-3d23978a605d', 'f342ce6c-6694-4a0e-924e-b38a6347d5be', 'Palla Medica (2 Kg)', 14.990000000000000000000000000000, 0, 1, '3ea41cf1-ddd6-4e9a-bf9b-11fc53ea869d', 'b837ecbb-bc7d-416c-9ee2-17286d71f16a', '2024-05-17 23:15:41.936', '2024-05-18 10:03:11.738'),
('ca71a3b0-7ecb-437e-a952-e4b85e96872e', '1b682704-b392-48bc-be7e-3d23978a605d', 'faa93714-a454-42aa-9cb7-51603f5257f5', 'Polsiere', 13.000000000000000000000000000000, 0, 0, '64f114ab-05f9-49c9-9520-56f03a288584', '5c5492bb-0a57-41b1-bb1a-0dc27e993a7c', '2024-05-17 23:20:00.121', '2024-05-17 23:20:00.121'),
('d9d16ccf-7a72-4321-9458-9d458afe5256', '1b682704-b392-48bc-be7e-3d23978a605d', 'f342ce6c-6694-4a0e-924e-b38a6347d5be', 'Bilanciere EZ', 34.390000000000000000000000000000, 0, 0, 'cfe427f5-538f-48bf-846d-a1025961d5fb', 'db5e22b2-c991-47a3-a1a1-6d4f71da5bfa', '2024-05-17 23:09:37.871', '2024-05-17 23:09:37.871'),
('dfe32462-fbf0-4dc0-bb54-81a0e121903c', '1b682704-b392-48bc-be7e-3d23978a605d', 'faa93714-a454-42aa-9cb7-51603f5257f5', 'Paradenti', 4.990000000000000000000000000000, 0, 0, 'f6dc698c-c71d-4480-9e5d-4a9abdfcd54c', '802ae89b-4568-460f-b007-046bac18c936', '2024-05-17 23:22:44.097', '2024-05-17 23:22:44.097'),
('e5f1b525-0daa-4fa5-9344-7a13e03c68c9', '1b682704-b392-48bc-be7e-3d23978a605d', '3bf0475f-4cce-46a3-aa9e-c0a5bc78bf2d', 'Canottiera', 6.990000000000000000000000000000, 1, 0, '3ea41cf1-ddd6-4e9a-bf9b-11fc53ea869d', 'b837ecbb-bc7d-416c-9ee2-17286d71f16a', '2024-05-17 22:40:14.874', '2024-05-17 22:48:37.257'),
('e8d307e5-1da6-4c63-857b-a27f2b7e6d55', '1b682704-b392-48bc-be7e-3d23978a605d', 'd445fe02-5119-455b-8d4b-a4becd6670e4', 'TEST-PRODUCT', 111111111111111.000000000000000000000000000000, 0, 0, '3ea41cf1-ddd6-4e9a-bf9b-11fc53ea869d', '8575c0d3-aeb7-49dc-bfab-26925fc39a1a', '2024-05-18 11:26:35.871', '2024-05-18 11:26:35.871'),
('eb10d259-c2bc-4f46-bd54-8750daca78d6', '1b682704-b392-48bc-be7e-3d23978a605d', 'f342ce6c-6694-4a0e-924e-b38a6347d5be', 'Materassino', 15.610000000000000000000000000000, 1, 0, '64f114ab-05f9-49c9-9520-56f03a288584', '8c16180d-72ac-4a23-bcda-9fb171a4a310', '2024-05-17 22:56:28.867', '2024-05-17 22:57:44.725'),
('eeb5b1ca-c41e-4061-a7c8-7d1322f8e019', '1b682704-b392-48bc-be7e-3d23978a605d', '3bf0475f-4cce-46a3-aa9e-c0a5bc78bf2d', 'Maglietta', 15.000000000000000000000000000000, 1, 1, '64f114ab-05f9-49c9-9520-56f03a288584', '4b98b28d-293b-4b93-a44d-564bb3262491', '2024-05-17 22:41:02.303', '2024-05-18 00:15:34.722'),
('f0427b74-6135-459e-a184-05f02c85a7df', '1b682704-b392-48bc-be7e-3d23978a605d', '3bf0475f-4cce-46a3-aa9e-c0a5bc78bf2d', 'Calze', 1.990000000000000000000000000000, 0, 0, 'f6dc698c-c71d-4480-9e5d-4a9abdfcd54c', '5c5492bb-0a57-41b1-bb1a-0dc27e993a7c', '2024-05-17 23:26:20.581', '2024-05-17 23:26:20.581'),
('f23d0ea0-5486-4ad4-9160-91b13891bbd1', '1b682704-b392-48bc-be7e-3d23978a605d', '3bf0475f-4cce-46a3-aa9e-c0a5bc78bf2d', 'Pantaloncini', 7.660000000000000000000000000000, 1, 0, 'f6dc698c-c71d-4480-9e5d-4a9abdfcd54c', '5c5492bb-0a57-41b1-bb1a-0dc27e993a7c', '2024-05-17 22:41:45.911', '2024-05-17 22:43:36.629');

-- --------------------------------------------------------

--
-- Struttura della tabella `size`
--

CREATE TABLE `size` (
  `id` varchar(191) NOT NULL,
  `storeId` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `size`
--

INSERT INTO `size` (`id`, `storeId`, `name`, `value`, `createdAt`, `updatedAt`) VALUES
('3ea41cf1-ddd6-4e9a-bf9b-11fc53ea869d', '1b682704-b392-48bc-be7e-3d23978a605d', 'Media', 'M', '2024-05-17 22:00:43.151', '2024-05-17 22:00:43.151'),
('64f114ab-05f9-49c9-9520-56f03a288584', '1b682704-b392-48bc-be7e-3d23978a605d', 'Extra-Larga', 'XL', '2024-05-17 22:00:57.982', '2024-05-17 22:00:57.982'),
('cfe427f5-538f-48bf-846d-a1025961d5fb', '1b682704-b392-48bc-be7e-3d23978a605d', 'Larga', 'L', '2024-05-17 22:00:48.838', '2024-05-17 22:00:48.838'),
('f6dc698c-c71d-4480-9e5d-4a9abdfcd54c', '1b682704-b392-48bc-be7e-3d23978a605d', 'Stretta', 'S', '2024-05-17 22:00:37.433', '2024-05-17 22:00:37.433');

-- --------------------------------------------------------

--
-- Struttura della tabella `store`
--

CREATE TABLE `store` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `store`
--

INSERT INTO `store` (`id`, `name`, `userId`, `createdAt`, `updatedAt`) VALUES
('1b682704-b392-48bc-be7e-3d23978a605d', 'Decathlon', 'user_2drgxfm8GmYUdZsOTPROcxwLnxh', '2024-05-17 21:55:52.015', '2024-05-17 21:55:52.015');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `billboard`
--
ALTER TABLE `billboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Billboard_storeId_idx` (`storeId`);

--
-- Indici per le tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Category_storeId_idx` (`storeId`),
  ADD KEY `Category_billboardId_idx` (`billboardId`);

--
-- Indici per le tabelle `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Color_storeId_idx` (`storeId`);

--
-- Indici per le tabelle `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Image_productId_idx` (`productId`);

--
-- Indici per le tabelle `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_storeId_idx` (`storeId`);

--
-- Indici per le tabelle `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OrderItem_orderId_idx` (`orderId`),
  ADD KEY `OrderItem_productId_idx` (`productId`);

--
-- Indici per le tabelle `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Product_storeId_idx` (`storeId`),
  ADD KEY `Product_categoryId_idx` (`categoryId`),
  ADD KEY `Product_sizeId_idx` (`sizeId`),
  ADD KEY `Product_colorId_idx` (`colorId`);

--
-- Indici per le tabelle `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Size_storeId_idx` (`storeId`);

--
-- Indici per le tabelle `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
