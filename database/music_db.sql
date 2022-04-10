

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(30) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `cover_photo` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`, `description`, `cover_photo`, `date_created`) VALUES
(1, 'Classical Music', 'Indian', '1605745560_play.jpg', '2022-04-06 08:26:53'),
(2, 'Popular Music', ' Its loud and strong beats make it popular among the youths.', 'default_cover.jpg', '2022-04-06 08:29:13'),
(3, 'Rhythm', 'Rhythm', 'default_cover.jpg', '2022-04-06 08:59:17');

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `genre_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `artist` text NOT NULL,
  `description` text NOT NULL,
  `upath` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `user_id`, `genre_id`, `title`, `artist`, `description`, `upath`, `cover_image`, `date_created`) VALUES
(1, 1, 2, 'Song 101', 'BenSound', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas est massa, non ullamcorper augue sodales non. Morbi mollis venenatis augue sit amet lacinia. Cras tempor tempor urna, nec consectetur tellus ullamcorper quis. Mauris vitae blandit tellus. Sed feugiat tincidunt malesuada. Cras egestas consequat molestie. Ut non ex nec tellus vestibulum tincidunt. Suspendisse facilisis lorem id sapien euismod, id gravida felis blandit. Nam quis diam tempor, luctus nisl at, auctor velit. Nunc rhoncus, turpis et ornare sagittis, metus diam dignissim dolor, non faucibus quam leo ut lectus. Etiam accumsan tellus eu hendrerit posuere. Aliquam erat volutpat. Donec fermentum purus odio, vel sodales sapien lobortis eu. Sed neque tellus, sagittis id scelerisque at, luctus ac felis.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '1605833220_bensound-creativeminds.mp3', '1605833220_m1.jpg', 2147483647),
(2, 2, 1, 'Song 102', 'BenSound', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Ut facilisis, mi eget semper euismod, urna mauris tristique ipsum, a auctor tortor leo a arcu. Duis nec felis eget diam scelerisque porttitor. Etiam ullamcorper leo auctor, imperdiet diam nec, scelerisque lacus. Sed at ornare tortor. Praesent volutpat, lacus eu molestie elementum, purus nulla pellentesque eros, sit amet viverra ex nisl quis risus. Etiam elementum posuere odio vitae lacinia. Nunc magna nunc, placerat ut neque vitae, dignissim eleifend sapien. Phasellus arcu felis, maximus vel ultrices quis, aliquam ac sapien. Sed aliquet interdum sollicitudin. Maecenas blandit tellus eget risus finibus, non gravida nunc pulvinar. Lorem ipsum dolor sit amet, consectetur adipiscing elit.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '1605833760_bensound-energy.mp3', '1605833760_m3.jpg', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT 2,
  `profile_pic` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `type`, `profile_pic`, `date_created`) VALUES
(1, 'Admini', '', 'Female', '123546879', '', 'ayushiadmin@admin.com', 'ayushi1234', 1, '', '2020-11-18 16:50:06'),


--
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--


--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

