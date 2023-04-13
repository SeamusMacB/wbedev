-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 08:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stax`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_title` varchar(255) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_title`, `genre_id`) VALUES
(1, 'Wasting Light', 1),
(32, 'DAMN.', 3),
(33, 'good kid, m.A.A.d city', 3),
(34, 'Tickets to my Downfall', 1),
(35, 'Meteora', 4),
(36, 'Hybrid Theory', 4),
(37, 'By The Way', 6),
(38, 'Californication', 6),
(39, 'Thats the Spirit', 4);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `About` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `About`) VALUES
(1, 'Foo Fighters', 'Foo Fighters is an American rock band formed in Seattle in 1994. Foo Fighters was initially formed as a one-man project by former Nirvana drummer Dave Grohl. Following the success of the 1995 eponymous debut album, Grohl (lead vocals, guitar) recruited a band consisting of Nate Mendel (bass guitar), William Goldsmith (drums), and Pat Smear (guitar). After a succession of lineup changes, including the departures of Goldsmith and Smear, the band formed its core lineup in 1999, consisting of Grohl, Mendel, Chris Shiflett (guitar), and Taylor Hawkins (drums). Smear rejoined in 2005, and Rami Jaffee (keyboards) joined in 2017.'),
(2, 'Machine Gun Kelly', 'Colson Baker[2] (born April 22, 1990), known professionally as Machine Gun Kelly (MGK), is an American rapper, singer, songwriter, and actor. He is noted for his genre duality across alternative rock with hip hop.  Machine Gun Kelly released four mixtapes between 2007 and 2010 before signing with Bad Boy Records. He released his debut studio album, Lace Up, in 2012, which peaked at number four on the US Billboard 200 and contained his breakout single \"Wild Boy\" (featuring Waka Flocka Flame). His second and third albums, General Admission (2015) and Bloom (2017), achieved similar commercial success; the latter included the single \"Bad Things\" (with Camila Cabello), which peaked at number 4 on the Billboard Hot 100. His fourth album, Hotel Diablo (2019), included rap rock.'),
(3, 'Bring Me the Horizon', 'Bring Me the Horizon (often abbreviated as BMTH) are a British rock band, formed in Sheffield in 2004. The group currently consists of lead vocalist Oliver Sykes, guitarist Lee Malia, bassist Matt Kean, drummer Matt Nicholls and keyboardist Jordan Fish. They are signed to RCA Records globally and Columbia Records exclusively in the United States.  The band released their debut album Count Your Blessings in 2006. Upon release, the album\'s deathcore sound polarised listeners, and was largely met with critical disdain. The band began to break away from this sound with their second album Suicide Season (2008), which was considered a creative, critical and commercial turning point for the band. Bring Me the Horizon released their third album, There Is a Hell Believe Me I\'ve Seen It. There Is a Heaven Let\'s Keep It a Secret., in 2010, propelling them to greater international fame, whilst incorporating influences from classical music, electronica and pop. Their major label debut, Sempiternal, (2013) achieved Gold certification in Australia (35,000) and Silver in the United Kingdom (60,000). That\'s the Spirit (2015) debuted at number two in the UK Albums Chart and the US Billboard 200.[1][2] Their sixth studio album Amo (2019) became their first UK chart-topper. The same year, the band also released Music to Listen To... (2019). Post Human: Survival Horror followed in 2020, the first in a planned series of four projects under the Post Human name. The band have also released two extended plays and two live albums. They have received four Kerrang! Awards, including two for Best British Band and one for Best Live Band, and have been nominated for two Grammy Awards. The band has sold over 4 million records worldwide, and have topped the UK Rock & Metal Singles Chart with songs such as \"Throne\", \"Drown, \"Mantra\" and \"Parasite Eve\".[3]'),
(4, 'Red Hot Chilli Peppers', 'The Red Hot Chili Peppers are an American rock band formed in Los Angeles in 1982,[1] comprising vocalist Anthony Kiedis, bassist Flea, drummer Chad Smith, and guitarist John Frusciante. Their music incorporates elements of alternative rock, funk, punk rock, hard rock, hip hop, and psychedelic rock. Their eclectic range has influenced genres such as funk metal,[2] rap metal,[3] rap rock,[4] and nu metal.[5][3] With over 120 million records sold worldwide, Red Hot Chili Peppers are one of the best-selling bands of all time.[6] They hold the records for most number-one singles (15), most cumulative weeks at number one (91) and most top-ten songs (28) on the Billboard Alternative Songs chart.[7] They have won six Grammy Awards, were inducted into the Rock and Roll Hall of Fame in 2012, and in 2022 received a star on the Hollywood Walk of Fame.  Red Hot Chili Peppers were formed in Los Angeles by Kiedis, Flea, guitarist Hillel Slovak and drummer Jack Irons. Due to commitments to other bands, Slovak and Irons did not play on the band\'s 1984 self-titled debut album, which instead featured guitarist Jack Sherman and drummer Cliff Martinez. Slovak rejoined for their second album, Freaky Styley (1985), and Irons for their third, The Uplift Mofo Party Plan (1987). Irons left after Slovak died of a drug overdose in June 1988.  With new recruits Frusciante and Smith, Red Hot Chili Peppers recorded Mother\'s Milk (1989) and their first major commercial success, Blood Sugar Sex Magik (1991). Frusciante was uncomfortable with their newfound popularity and left abruptly on tour in 1992. After a series of temporary guitarists, he was replaced by Dave Navarro, who appeared on the group\'s sixth album, One Hot Minute (1995). Although successful, the album failed to match the critical or popular acclaim of Blood Sugar Sex Magik. Frusciante and Kiedis struggled with drug addiction throughout the 1990s.'),
(5, 'Linkin Park', 'Linkin Park is an American rock band from Agoura Hills, California. The band\'s current lineup comprises vocalist/rhythm guitarist/keyboardist Mike Shinoda, lead guitarist Brad Delson, bassist Dave Farrell, DJ/turntablist Joe Hahn and drummer Rob Bourdon, all of whom are founding members. Vocalists Mark Wakefield and Chester Bennington are former members of the band. Categorized as alternative rock, Linkin Park\'s earlier music spanned a fusion of heavy metal and hip hop, while their later music features more electronica and pop elements.  Formed in 1996, Linkin Park rose to international fame with their debut studio album, Hybrid Theory (2000), which became certified Diamond by the Recording Industry Association of America (RIAA). Released during the peak of the nu metal scene, the album\'s singles\' heavy airplay on MTV led the singles \"One Step Closer\", \"Crawling\" and \"In the End\" all to chart highly on the US Mainstream Rock chart. The lattermost also crossed over to the nation\'s Billboard Hot 100.[1] Their second album, Meteora (2003), continued the band\'s success.[2] The band explored experimental sounds on their third album, Minutes to Midnight (2007).[3] By the end of the decade, Linkin Park was among the most successful and popular rock acts.[4]  The band continued to explore a wider variation of musical types on their fourth album, A Thousand Suns (2010), layering their music with more electronic sounds. The band\'s fifth album, Living Things (2012), combined musical elements from all of their previous records. Their sixth album, The Hunting Party (2014), returned to a heavier rock sound, and their seventh album, One More Light (2017), was a substantially more pop-oriented record. Linkin Park went on a hiatus when longtime lead vocalist Bennington died in July 2017. In April 2022, Shinoda revealed the band was neither working on new music nor planning on touring for the foreseeable future.'),
(6, 'Kendrick Lamar', 'Kendrick Lamar Duckworth (born June 17, 1987) is an American rapper and songwriter. Known for his progressive musical styles and socially conscious songwriting, he is often considered one of the most influential hip hop artists of his generation.[1][2] Born and raised in Compton, California, Lamar began his career as a teenager performing under the stage name K.Dot. He quickly garnered local attention which led to him signing a recording contract with Top Dawg Entertainment (TDE) in 2005.[3]  After becoming a founding member of the hip hop supergroup Black Hippy, Lamar dropped his stage name and started using his first and middle names professionally. In 2011, he released his debut studio album Section.80, a conscious hip hop record. The album was met with positive reviews and included his debut single \"HiiiiPower\". In 2012, Lamar secured a record deal with Dr. Dre’s Aftermath Entertainment, under the aegis of Interscope Records, and released his second studio album Good Kid, M.A.A.D City. The West Coast and gangsta rap influenced album garnered widespread critical recognition and commercial success, while including the singles \"Swimming Pools (Drank),\" \"Backseat Freestyle,\" and \"Bitch, Don\'t Kill My Vibe\".[4]  A visit to South Africa inspired Lamar’s jazz-flavored third studio album To Pimp a Butterfly (2015).[5] It received universal acclaim and became his first number-one album on the Billboard 200.[6] The same year, he topped the Billboard Hot 100 for the first time with the remix of \"Bad Blood\" by Taylor Swift.[7] Lamar experimented with R&B, pop and psychedelic soul in his fourth studio album Damn (2017). It spawned his first solo number-one single \"Humble\" and became the first non-classical and non-jazz work to be awarded the Pulitzer Prize for Music.[8] Following a four-year hiatus, Lamar released his fifth studio album Mr. Morale & the Big Steppers (2022), which served as his swan song from TDE.[9] He has directed and produced several music videos and films with his creative partner Dave Free, with whom he founded the creative collective PGLang.');

-- --------------------------------------------------------

--
-- Table structure for table `artist_album`
--

CREATE TABLE `artist_album` (
  `artist_album_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `artist_album`
--

INSERT INTO `artist_album` (`artist_album_id`, `artist_id`, `album_id`) VALUES
(1, 1, 1),
(2, 6, 32),
(3, 6, 33),
(4, 2, 34),
(5, 5, 35),
(6, 5, 36),
(7, 4, 37),
(8, 4, 38),
(9, 3, 39);

-- --------------------------------------------------------

--
-- Table structure for table `dummy_table`
--

CREATE TABLE `dummy_table` (
  `album` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dummy_table`
--

INSERT INTO `dummy_table` (`album`, `review`) VALUES
('Test 1', 'Test 1'),
('Test 2', 'Test 2');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_desc`) VALUES
(1, 'Rock'),
(2, 'Rap'),
(3, 'Hip-Hop'),
(4, 'Metal'),
(5, 'Indie'),
(6, 'Alt');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_review`
--

CREATE TABLE `user_review` (
  `user_review_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `artist_album_id` int(11) NOT NULL,
  `review` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `FK_album_genre_FK` (`genre_id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `artist_album`
--
ALTER TABLE `artist_album`
  ADD PRIMARY KEY (`artist_album_id`),
  ADD KEY `FK_album_artist_album` (`album_id`),
  ADD KEY `FK_artist_album_artist` (`artist_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `user_review`
--
ALTER TABLE `user_review`
  ADD PRIMARY KEY (`user_review_id`),
  ADD KEY `FK_user_review_member_FK` (`member_id`),
  ADD KEY `FK_user_review_artist_album_FK` (`artist_album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `artist_album`
--
ALTER TABLE `artist_album`
  MODIFY `artist_album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_review`
--
ALTER TABLE `user_review`
  MODIFY `user_review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `FK_album_genre_FK` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);

--
-- Constraints for table `artist_album`
--
ALTER TABLE `artist_album`
  ADD CONSTRAINT `FK_album_artist_album` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `FK_artist_album_artist` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`);

--
-- Constraints for table `user_review`
--
ALTER TABLE `user_review`
  ADD CONSTRAINT `FK_user_review_artist_album_FK` FOREIGN KEY (`artist_album_id`) REFERENCES `artist_album` (`artist_album_id`),
  ADD CONSTRAINT `FK_user_review_member_FK` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
