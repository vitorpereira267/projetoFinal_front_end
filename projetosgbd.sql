-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Jun-2021 às 22:30
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetosgbd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `buy`
--

CREATE TABLE `buy` (
  `buy_ID` int(11) NOT NULL,
  `dayBought` date DEFAULT NULL,
  `game_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `buy`
--

INSERT INTO `buy` (`buy_ID`, `dayBought`, `game_ID`) VALUES
(1, '2021-04-20', 2),
(2, '2021-03-12', 3),
(3, '2021-01-26', 4),
(4, '2021-03-22', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `category`
--

CREATE TABLE `category` (
  `category_ID` int(11) NOT NULL,
  `nameCategory` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `category`
--

INSERT INTO `category` (`category_ID`, `nameCategory`) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'Singleplayer'),
(4, 'Multiplayer'),
(5, 'Co-op'),
(6, 'Desporto'),
(7, 'FPS'),
(8, 'Corrida');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorygame`
--

CREATE TABLE `categorygame` (
  `category_ID` int(11) DEFAULT NULL,
  `game_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorygame`
--

INSERT INTO `categorygame` (`category_ID`, `game_ID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(7, 1),
(1, 2),
(2, 2),
(3, 2),
(7, 2),
(1, 3),
(2, 3),
(4, 3),
(5, 3),
(2, 4),
(3, 4),
(4, 4),
(8, 4),
(2, 5),
(3, 5),
(4, 5),
(8, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(7, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(7, 7),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(7, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(5, 11),
(7, 11),
(1, 12),
(3, 12),
(4, 12),
(7, 12),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(5, 13),
(7, 13),
(1, 14),
(2, 14),
(3, 14),
(7, 14),
(3, 15),
(4, 15),
(5, 15),
(6, 15),
(1, 16),
(2, 16),
(3, 16),
(4, 16),
(5, 16),
(2, 17),
(3, 17),
(4, 17),
(5, 17),
(8, 17),
(1, 18),
(4, 18),
(7, 18),
(1, 19),
(2, 19),
(3, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `games`
--

CREATE TABLE `games` (
  `game_ID` int(11) NOT NULL,
  `gameName` varchar(100) DEFAULT NULL,
  `pegi` int(11) NOT NULL,
  `preco` float NOT NULL,
  `stock` int(11) NOT NULL,
  `minimum_Requirement` varchar(1000) DEFAULT NULL,
  `recommended_Requirement` varchar(1000) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `games`
--

INSERT INTO `games` (`game_ID`, `gameName`, `pegi`, `preco`, `stock`, `minimum_Requirement`, `recommended_Requirement`, `description`, `releaseDate`, `image`) VALUES
(1, 'Assassin\'s Creed IV: Black Flag', 16, 19.99, 2, 'OS:Windows Vista SP2 or Windows 7 SP1 or Windows 8 (both 32/64bit versions)\r\n	Processor:Intel Core2Quad Q8400 @ 2.6 GHz or AMD Athlon II X4 620 @ 2.6 GHz\r\n	Memory:2 GB RAM\r\n	Graphics:Nvidia Geforce GTX 260 or AMD Radeon HD 4870 (512MB VRAM with shader Model 4.0 or higher)\r\n	Storage:30 GB available space\r\n	Sound Card:DirectX Compatible Sound Card with latest drivers', 'OS:Windows Vista SP2 or Windows 7 SP1 or Windows 8 (both 32/64bit versions)\r\n	Processor:Intel Core i5 2400S @ 2.5 GHz or better or AMD Phenom II x4 940 @ 3.0 GHz\r\n	Memory:4 GB RAM\r\n	Graphics:Nvidia GeForce GTX 470 or AMD Radeon HD 5850 (1024MB VRAM with Shader Model 5.0) or better\r\n	Storage:30 GB available space\r\n	Sound Card:DirectX Compatible Sound Card with latest drivers', 'The year is 1715. Pirates rule the Caribbean and have established their own lawless Republic where corruption, 		greediness and cruelty are commonplace. Among these outlaws is a brash young captain named Edward Kenway. His fight for glory has earned him the respect of legends like 		Blackbeard, but also drawn him into the ancient war between Assassins and Templars, a war that may destroy everything the pirates have built. Welcome to the Golden Age of 		Piracy.', '2013-10-23', 'http://localhost:3000/ACblackflag.jpg'),
(2, 'Assassin\'s Creed Odyssey', 16, 24.99, 2, 'OS:Windows 7 SP1, Windows 8.1, Windows 10 (64-bit versions only)\r\nProcessor:Intel Core i5-2400s @ 2.5 GHz or AMD FX-6350 @ 3.9 GHz or equivalent\r\nMemory:6 GB RAM\r\nGraphics:NVIDIA GeForce GTX 660 or AMD R9 270 (2048 MB VRAM with Shader Model 5.0 or better)\r\nDirectX:Version 11\r\nStorage:42 GB available space', 'OS:Windows 7 SP1, Windows 8.1, Windows 10 (64-bit versions only)\r\nProcessor:Intel Core i7- 3770 @ 3.5 GHz or AMD FX-8350 @ 4.0 GHz\r\nMemory:8 GB RAM\r\nGraphics:NVIDIA GeForce GTX 760 or AMD R9 280X (3GB VRAM with Shader Model 5.0 or better)\r\nStorage:42 GB available space', 'Ancient Egypt, a land of majesty and intrigue, is disappearing in a ruthless fight for power. Unveil dark secrets and forgotten myths as you go back to the one founding moment: The Origins of the Assassin’s Brotherhood.', '2017-10-27', 'http://localhost:3000/ACod.jpg'),
(3, 'A Way Out', 16, 14.99, 2, 'OS:Windows 7 64-bit, 8.1 64-bit or Windows 10 64-bit\r\nProcessor:Intel core i3-2100T @ 2.5GHz/AMD FX 6100, or better\r\nMemory:8 GB RAM\r\nGraphics:NVIDIA GeForce GTX 650Ti 2GB, AMD Radeon HD 7750 2GB\r\nStorage:25 GB available space', 'OS:Windows 7 64-bit, 8.1 64-bit or Windows 10 64-bit\r\nProcessor:Intel Core i5 3570K; AMD Ryzen 3 1300x or equivalent\r\nMemory:16 GB RAM\r\nGraphics:Nvidia GTX 960; AMD R9 290 or equivalent\r\nStorage:25 GB available space', 'From the creators of Brothers – A Tale of Two Sons comes A Way Out, an exclusively co-op adventure where you play the role of one of two prisoners making their daring escape from prison. What begins as a thrilling breakout quickly turns into an unpredictable, emotional adventure unlike anything seen or played before. A Way Out is an experience that must be played with two players. Each player controls one of the main characters, Leo and Vincent, in a reluctant alliance to break out of prison and gain their freedom.', '2018-03-23', 'http://localhost:3000/wayout.jpg'),
(4, 'Need for Speed: Payback', 12, 9.99, 2, 'OS:64-bit Windows 7 or later\r\nProcessor:Intel i3 6300 @ 3.8GHz or AMD FX 8150 @ 3.6GHz with 4 hardware threads\r\nMemory:6 GB RAM\r\nGraphics:NVIDIA GeForce® GTX 750 Ti or AMD Radeon™ HD 7850 or equivalent DX11 compatible GPU with 2GB of memory\r\nDirectX:Version 11\r\nNetwork:Broadband Internet connection\r\nStorage:30 GB available space', 'OS:64-bit Windows 10 or later\r\nProcessor:Intel i5 4690K @ 3.5GHz or AMD FX 8350 @ 4.0GHz with 4 hardware threads\r\nMemory:8 GB RAM\r\nGraphics:AMD Radeon™ RX 480 4GB, NVIDIA GeForce® GTX 1060 6GB or equivalent DX11 compatible GPU with 4GB of memory\r\nDirectX:Version 11\r\nNetwork:Broadband Internet connection\r\nStorage:30 GB available space', 'Need for Speed™, one of the world’s bestselling video game franchises returns with a vengeance in the new Need for Speed Payback.\r\nSet in the underworld of Fortune Valley, you and your crew were divided by betrayal and reunited by revenge to take down The House, a nefarious cartel that rules the city’s casinos, criminals and cops. In this corrupt gambler’s paradise, the stakes are high and The House always wins.', '2017-11-10', 'http://localhost:3000/nfspayback.jpg'),
(5, 'Battlefield 1', 18, 5.99, 2, 'OS	Win 7 64\r\nCPU	Core i5-6600K 3.5GHz / FX-6350\r\nRAM	8 GB\r\nGPU	GeForce GTX 660 / Radeon HD 7850\r\nHDD	50 GB', 'OS	Win 10 64\r\nCPU	Core i7-4790 4-Core 3.6GHz / FX-8350\r\nRAM	16 GB\r\nGPU	GeForce GTX 1060 / Radeon RX 480 4GB\r\nHDD	50 GB', 'Battlefield 1 takes you back to The Great War, WW1, where new technology and worldwide conflict changed the face of warfare forever. Take part in every battle, control every massive vehicle, and execute every maneuver that turns an entire fight around. The whole world is at war – see what’s beyond the trenches.\r\nKey Features:\r\n\r\nChanging environments in locations all over the world. Discover every part of a global conflict from shore to shore – fight in besieged French cities, great open spaces in the Italian Alps, or vast Arabian deserts. Fully destructible environments and ever-changing weather create landscapes that change moment to moment; whether you’re tearing apart fortifications with gunfire or blasting craters in the earth, no battle is ever the same.\r\n\r\nHuge multiplayer battles. Swarm the battlefield in massive multiplayer battles with up to 64 players. Charge in on foot as infantry, lead a cavalry assault, and battle in fights so intense and complex you\'ll need the help of all your teammates to make it through.\r\n\r\nGame-changing vehicles. Turn the tide of battle in your favor with vehicles both large and larger, from tanks and biplanes to gigantic Behemoths, unique and massive vehicles that will be critical in times of crisis. Rain fire from the sky in a gargantuan Airship, tear through the world in the Armored Train, or bombard the land from the sea in the Dreadnought.\r\n\r\nA new Operations multiplayer mode. In Operations mode, execute expert maneuvers in a series of inter-connected multiplayer battles spread across multiple maps. Attackers must break through the defense line and push the conflict onto the next map, and defenders must try to stop them.', '2016-10-21', 'http://localhost:3000/btf1.jpg'),
(6, 'Battlefield 5', 18, 16.99, 2, 'OS	Win 7 64\r\nCPU	Core i5-6600K 3.5GHz / FX-6350\r\nRAM	8 GB\r\nGPU	GeForce GTX 660 / Radeon HD 7850\r\nHDD	50 GB', 'OS	Win 10 64\r\nCPU	Core i7-4790 4-Core 3.6GHz / FX-8350\r\nRAM	16 GB\r\nGPU	GeForce GTX 1060 / Radeon RX 480 4GB\r\nHDD	50 GB', 'Fica a conhecer o mais impressionante conflito da humanidade com Battlefield V, à medida que a série volta às raízes para uma abordagem única à 2ª GM. Participa num modo multijogador exigente e sem tréguas junto do teu esquadrão em modos como o gigantesco Grand Operations e o Combined Arms cooperativo, ou assiste ao drama humano que se desenrola junto dos combates globais nas Histórias de Guerra para um jogador. Nos combates épicos através de locais inesperados em todo o mundo, poderás desfrutar do Battlefield mais imersivo e cheio de detalhes de sempre.\r\n\r\n• A 2ª GM como nunca a viste antes – Combate em batalhas inesperadamente cruciais para o desenrolar da guerra, com Battlefield a voltar às suas raízes.\r\n\r\n• Multijogador para 64 jogadores no caos da guerra total – Lidera a tua Companhia no multijogador sem tréguas e conhece novas experiências como o gigantesco modo Grand Operations. Enfrenta modos clássicos como Conquest ou junta-te aos amigos no modo cooperativo Combined Arms.\r\n\r\n• O Battlefield mais físico de sempre – Percorre o campo de batalha usando novos movimentos, fortificações e ferramentas de destruição móveis.\r\n\r\n• Fica a conhecer Histórias de Guerra inédita – assiste ao drama humano que se desenrola junto dos combates globais nas Histórias de Guerra para um jogador. Esquia nas encostas norueguesas enquanto tentas controlar as linhas de fornecimento de um arsenal nuclear, junta-te à frente de batalha com as tropas coloniais francesas ou esgueira-te por trás das linhas inimigas no norte de África junto de um bando de rebeldes dispostos a semear o caos.\r\n\r\n• Tides of War – Parte numa aventura onde a cada atualização serás transportado junto da tua Companhia para vários dos mais marcantes combates da 2ª GM, onde novas batalhas e equipamentos esperam por ti.', '2018-11-20', 'http://localhost:3000/btf5.jpg'),
(7, 'Call of Duty: Black Ops II', 18, 9.99, 2, 'Windows Vista SP2 or Windows 7. Windows XP is not supported\r\nProcessor:Intel Core2 Duo E8200 2.66 GHz or AMD Phenom X3 8750 2.4 GHz\r\nMemory:2 GB for 32-bit OS or 4 GB for 64-bit OS\r\nGraphics:Nvidia GeForce 8800GT 512 MB or ATI Radeon HD 3870 512 MB\r\nDirectX:Version 9.0c\r\nHard Drive:16 GB\r\nSound:DirectX 11.0c compatible', NULL, 'Pushing the boundaries of what fans have come to expect from the record-setting entertainment franchise, Call of Duty®: Black Ops II propels players into a near future, 21st Century Cold War, where technology and weapons have converged to create a new generation of warfare.', '2012-11-13', 'http://localhost:3000/codbo2.jpg'),
(8, 'Call of Duty: Black Ops III', 18, 19.99, 2, 'OS:Windows 7 64-Bit / Windows 8 64-Bit / Windows 8.1 64-Bit\r\nProcessor:Intel® Core™ i3-530 @ 2.93 GHz / AMD Phenom™ II X4 810 @ 2.60 GHz\r\nMemory:6 GB RAM\r\nGraphics:NVIDIA® GeForce® GTX 470 @ 1GB / ATI® Radeon™ HD 6970 @ 1GB\r\nDirectX:Version 11\r\nNetwork:Broadband Internet connection\r\nStorage:100 GB available space', NULL, 'The game is quite tightly mission-based, with little open world exploration allowed, but there is no sense of being funnelled along and deprived of chances to explore: you do get to grab a moment here and there to enjoy the gorgeous and well-realised scenery.\r\n\r\nWeather events like monsoons and sandstorms are accurately depicted and will take your breath away as though you were experiencing the real thing, and they do sometimes interact in the game too, slowing you down or minimising visibility.', '2015-11-05', 'http://localhost:3000/codbo3.jpg'),
(9, 'Counter-Strike: Global Offensive', 12, 9.99, 2, 'OS:Windows® 7/Vista/XP\r\nProcessor:Intel® Core™ 2 Duo E6600 or AMD Phenom™ X3 8750 processor or better\r\nMemory:2 GB RAM\r\nGraphics:Video card must be 256 MB or more and should be a DirectX 9-compatible with support for Pixel Shader 3.0\r\nDirectX:Version 9.0c\r\nStorage:15 GB available space', NULL, 'Counter-Strike: Global Offensive (CS: GO) expands upon the team-based action gameplay that it pioneered when it was launched 19 years ago. CS: GO features new maps, characters, weapons, and game modes, and delivers updated versions of the classic CS content (de_dust2, etc.). \"Counter-Strike took the gaming industry by surprise when the unlikely MOD became the most played online PC action game in the world almost immediately after its release in August 1999,\" said Doug Lombardi at Valve. \"For the past 12 years, it has continued to be one of the most-played games in the world, headline competitive gaming tournaments and selling over 25 million units worldwide across the franchise. CS: GO promises to expand on CS\' award-winning gameplay and deliver it to gamers on the PC as well as the next gen consoles and the Mac.\"', '2012-08-21', 'http://localhost:3000/csgo.jpg'),
(10, 'The Division 2', 18, 29.99, 2, 'OS	OS Win 7 64\r\nCPU	Core i5-2500K 3.3GHz / FX-6350\r\nRAM	\r\nGPU	/\r\nHDD	HDD Space 50 GB', 'OS	OS Win 7 64\r\nCPU	Core i7-4790 4-Core 3.6GHz / Ryzen R5 1500X\r\nRAM	\r\nGPU	/\r\nHDD	HDD Space 50 GB', 'Tom Clancy’s The Division 2 for PC follows on from the first game of the name. The first game dealt with the aftermath of a worldwide pandemic of weaponised smallpox (known as Green Poison) released in New York by an environmental terrorist. In the final days before the pandemic devastated society, the US government activated The Division – a domestic sleeper agency properly known as Strategic Homeland Division or SHD. It was The Division’s task to find the source of the disease and to maintain and/ or restore law and order.', '2019-03-15', 'http://localhost:3000/division2.jpg'),
(11, 'Far Cry New Dawn', 18, 8.99, 2, 'OS:Windows 7 SP1, Windows 8.1, Windows 10 (64bit versions only)\r\nProcessor:Intel Core i5 2400 @ 3.1 GHz or AMD FX 6350 @ 3.9 GHz\r\nMemory:8 GB RAM\r\nGraphics:NVIDIA GeForce GTX 670 (2GB) or AMD Radeon R9 270X (2GB) or better\r\nStorage:30 GB available space\r\nSound Card:DirectX 9.0c compatible sound card with latest drivers', 'OS:Windows 7 SP1, Windows 8.1, Windows 10 (64bit versions only)\r\nProcessor:Intel Core i7-4790 @ 3.6 GHz or AMD Ryzen 5 1600 @ 3.2 GHz\r\nMemory:8 GB RAM\r\nGraphics:NVIDIA GeForce GTX 970 (4GB) or AMD Radeon R9 290X (4GB) or better\r\nStorage:30 GB available space\r\nSound Card:DirectX 9.0c compatible sound card with latest drivers', 'Far Cry New Dawn for PC is an action adventure first-person shooter set in picturesque Montreal. Pretty pink flowers and beautiful tranquil scenery show how well the area has recovered from being nuked at the end of the last Far Cry game, thanks in part (probably) to your playing character’s job in the meanwhile, going around the country on a train, fixing things and helping communities to heal themselves.', '2019-02-15', 'http://localhost:3000/farcrynd.jpg'),
(12, 'FIFA 19', 3, 11.99, 2, 'OS	Win 7 64\r\nCPU	Core i3-2100 3.1GHz / Phenom II X4 965\r\nRAM	8 GB\r\nGPU	GeForce GTX 460 / Radeon R7 260\r\nHDD	50 GB', 'OS	Win 10 64\r\nCPU	Core i3-6300T 3.3GHz / Athlon X4 870K\r\nRAM	8 GB\r\nGPU	GeForce GTX 670 / Radeon R9 270X\r\nHDD	50 GB', 'FIFA 19, the game par excellence for football lovers, will be available for PC on September 28, 2018 in Instant Gaming. The most complete simulator, both on and off the pitch, comes this year with a lot of new things to look forward to, the most eye-catching of them is the official license of the UEFA Champions League.', '2018-09-28', 'http://localhost:3000/fifa19.jpg'),
(13, 'For Honor', 2, 6.99, 2, 'OS:Windows 7, Windows 8.1, Windows 10 (64-bit versions only)\r\nProcessor:Intel Core i3-550 | AMD Phenom II X4 955 or equivalent\r\nMemory:4 GB RAM\r\nGraphics:NVIDIA GeForce GTX660/GTX750ti/GTX950/GTX1050 with 2 GB VRAM or more | AMD Radeon HD6970/HD7870/R9 270/R9 370/RX460 with 2 GB VRAM or more\r\nNetwork:Broadband Internet connection\r\nStorage:40 GB available space\r\nSound Card:DirectX-Compatible using the latest drivers', 'OS:Windows 7, Windows 8.1, Windows 10 (64-bit versions only)\r\nProcessor:Intel Core i5-2500K | AMD FX-6350 or equivalent\r\nMemory:8 GB RAM\r\nGraphics:NVIDIA GeForce GTX770/GTX970/GTX1060 with 3 GB VRAM or more | AMD Radeon R9 280X/R9 380/RX470 with 3 GB VRAM or more\r\nNetwork:Broadband Internet connection\r\nStorage:40 GB available space\r\nSound Card:DirectX-Compatible using the latest drivers', 'Enter the chaos of war as a bold Knight, a brutal Viking, or a deadly Samurai. Play the thrilling story campaign or fight in brutal PvP modes, now on new dedicated servers. Enjoy an evolved experience with 18 Heroes, 18 maps, new PvP and ranked modes, thousands of gear items, and more since launch. Dedicated servers provide a stable and seamless experience as you fight to claim victory for your faction. Make the fight your own by customizing your Heroes with thousands of different weapons, emblems, and more. Earn rewards while you learn the art of combat with a brand-new training mode that takes you from Apprentice to Master. ---- Constant internet connection required. Additional notes: Eye tracking features available with Tobii Eye Tracking. Check out the For Honor VR experience: immerse yourself in the action with Littlstar.', '2017-02-14', 'http://localhost:3000/forhonor.jpg'),
(14, 'Need for Speed', 2, 10.99, 2, 'OS	Win 7 64\r\nCPU	Core i3-4130 3.4GHz / Athlon II X4 559\r\nRAM	6 GB\r\nGPU	GeForce GTX 750 Ti / Radeon HD 7850\r\nHDD	30 GB', 'OS	Win 7 64\r\nCPU	Core i5-4690 3.5GHz / FX-8370\r\nRAM	8 GB\r\nGPU	GeForce GTX 970 4GB / Radeon R9 290\r\nHDD	30 GB', 'Need for Speed for PC is an online racing game, the twenty-second in the Need for Speed franchise and something of a reboot of the original game. The racing is a mix of rallying with drifting, awkward terrain and the need for durable cars and street racing where sleek aerodynamism is necessary: all of it is speedy, compelling and immersive.', '2016-03-17', 'http://localhost:3000/nfs.jpg'),
(15, 'Tom Clancy\'s Rainbow Six Siege', 16, 7.99, 2, 'OS	Win 7 64\r\nCPU	Core i3-560 3.3GHz / Phenom II X4 945\r\nRAM	6 GB\r\nGPU	GeForce GTX 460 / Radeon HD 5770 1024MB\r\nHDD	50 GB', 'OS	Win 7 64\r\nCPU	Core i5-2500K 3.3GHz / FX-8120\r\nRAM	8 GB\r\nGPU	GeForce GTX 670 / Radeon HD 7970 GHz Edition\r\nHDD	50 GB', 'Rainbow Six Siege for PC is an online tactical shooter game. There is a strong emphasis on environmental destruction and cooperation between players, with each player assuming control of a playing character to defend or attack in each different scenario. These include hostage rescue, bomb defusing, and capturing or defending a control point.\r\n\r\nThe game got off to a slow start but plenty of downloadable content upgrades, plus the developers ‘game as service model’, since its release have seen any gaps in gameplay, plot and progression get filled in, and it is now known as one of the best games of its type with over 45 million registered players worldwide.', '2015-12-01', 'http://localhost:3000/r6.jpg'),
(16, 'Rayman Origins', 7, 3.99, 2, 'OS:Windows® XP / Windows Vista® / Windows® 7 (only)\r\nProcessor:3.0 GHz Intel® Pentium® 4 or 1.8 GHz AMD Athlon™ 64 3000+\r\nMemory:1 GB Windows XP / 1.5 GB Windows Vista, 7\r\nVideo Card:128 MB DirectX® 9.0c-compliant video card or higher* (see supported list)\r\nSound:DirectX 9.0c-compliant\r\nPeripherals Supported:Windows-compatible keyboard, mouse, optional controller (Xbox 360® Controller for Windows recommended)\r\nATI Radeon™ X600 XT – HD 2600 XT series\r\nNVIDIA® GeForce® 6800 GT – 8600 GT series', 'OS:Windows® XP / Windows Vista® / Windows® 7 (only)\r\nProcessor:2.0 GHz Intel® Core™2 Duo E4400 or 2.0 GHz AMD Athlon™ X2 3800+ or better\r\nMemory:2 GB recommended\r\nVideo Card:128 MB DirectX® 9.0c-compliant video card or higher* (see supported list)\r\nSound:DirectX 9.0c-compliant\r\nPeripherals Supported:Windows-compatible keyboard, mouse, optional controller (Xbox 360® Controller for Windows recommended)\r\nATI Radeon™ X600 XT – HD 2600 XT series\r\nNVIDIA® GeForce® 6800 GT – 8600 GT series', 'Michel Ancel, celebrated creator of Rayman®, Beyond Good & Evil®, and the Raving Rabbids®, returns to his roots to bring us Rayman® Origins: a high-definition, 2D side-scrolling, platforming adventure with full four-player co-op! Play Rayman Origins and discover or rediscover the magical universe and legendary 2D gameplay that captured the hearts of millions of fans... When the Glade of Dreams is overrun by “nefurrious” Darktoons, the Fairy Council hastily invokes Rayman to save the day; but the hero of light isn’t quite all there…To help him, Rayman teams up with his best friend, Globox, and two crafty wizards, the Teensies. Together, the world’s most hilarious team of heroes will need to restore peace to the Glade, or watch as their beloved home vanishes like a bad dream...', '2012-03-29', 'http://localhost:3000/rayman.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `multimedia`
--

CREATE TABLE `multimedia` (
  `multimedia_ID` int(11) NOT NULL,
  `game_ID` int(11) DEFAULT NULL,
  `multimedia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `multimedia`
--

INSERT INTO `multimedia` (`multimedia_ID`, `game_ID`, `multimedia`) VALUES
(1, 2, '/ACblackflag.jpg'),
(2, 2, '/ACblackflag1.jpg'),
(3, 2, '/ACblackflag3.jpg'),
(4, 2, '/ACblackflag4.jpg'),
(6, 3, '/ACod.jpg'),
(7, 3, '/acod1.jpg'),
(8, 3, '/acod2.jpg'),
(9, 3, '/acod3.jpg'),
(10, 3, '/acod4.jpg'),
(11, 4, '/wayout.jpg'),
(12, 4, '/wayout1.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `platform`
--

CREATE TABLE `platform` (
  `platform_ID` int(11) NOT NULL,
  `namePlatform` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `platform`
--

INSERT INTO `platform` (`platform_ID`, `namePlatform`) VALUES
(1, 'Steam'),
(2, 'Uplay'),
(3, 'Origin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `platformgame`
--

CREATE TABLE `platformgame` (
  `platform_ID` int(11) DEFAULT NULL,
  `game_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `platformgame`
--

INSERT INTO `platformgame` (`platform_ID`, `game_ID`) VALUES
(2, 1),
(2, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(1, 10),
(1, 11),
(1, 12),
(2, 13),
(2, 14),
(2, 15),
(3, 16),
(3, 17),
(2, 18),
(2, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `users_ID` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birthDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`users_ID`, `firstname`, `lastname`, `userName`, `password`, `email`, `birthDate`) VALUES
(1, 'Vitor', 'Pereira', 'vitorpereira123', '123', 'vitor@hotmail.com', '2002-07-26'),
(2, 'Henrique', 'Marques', 'henriquemarques69', '123', 'henrique@hotmail.com', '2002-03-13'),
(3, 'Carlos', 'Alberto', 'carlosalberto321', '123', 'carlos@hotmail.com', '2002-10-06'),
(4, 'Gabriel', 'Sousa', 'gabrielsousa234', '123', 'gabriel@hotmail.com', '2002-04-12'),
(5, 'Nuno', 'Nunes', 'nunonunes96', '123', 'nuno@hotmail.com', '2000-09-23'),
(6, '', '', '', '123', 'vitor321@hotmail.com', NULL),
(7, 'entao', 'sor', 'entaosor69', '123', 'entaosor@hotmail.com', '2222-02-03'),
(8, '', '', '', '123', 'vitor@hotmail.com', NULL),
(9, '', '', '', '123', 'dsadsa@hikdsf.com', NULL),
(10, 'vitor', 'tiago', 'vitortiago123', '123', 'tiago123@hotmail.com', '2021-06-01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `virtualkey`
--

CREATE TABLE `virtualkey` (
  `virtualKey_ID` int(11) NOT NULL,
  `game_ID` int(11) DEFAULT NULL,
  `virtualKey` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wishlist`
--

CREATE TABLE `wishlist` (
  `game_ID` int(11) DEFAULT NULL,
  `users_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `wishlist`
--

INSERT INTO `wishlist` (`game_ID`, `users_ID`) VALUES
(1, 1),
(2, 1),
(4, 2),
(3, 2),
(2, 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`buy_ID`);

--
-- Índices para tabela `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_ID`);

--
-- Índices para tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_ID`);

--
-- Índices para tabela `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`multimedia_ID`);

--
-- Índices para tabela `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`platform_ID`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_ID`);

--
-- Índices para tabela `virtualkey`
--
ALTER TABLE `virtualkey`
  ADD PRIMARY KEY (`virtualKey_ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `buy`
--
ALTER TABLE `buy`
  MODIFY `buy_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `category`
--
ALTER TABLE `category`
  MODIFY `category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `game_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `multimedia_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `platform`
--
ALTER TABLE `platform`
  MODIFY `platform_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `users_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `virtualkey`
--
ALTER TABLE `virtualkey`
  MODIFY `virtualKey_ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
