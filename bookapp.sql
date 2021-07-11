-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jul 11, 2021 at 06:10 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookposts`
--

CREATE TABLE `bookposts` (
  `bookpost_id` int(2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `bookpost` text NOT NULL,
  `comments` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookposts`
--

INSERT INTO `bookposts` (`bookpost_id`, `date`, `user_id`, `book_id`, `bookpost`, `comments`, `likes`, `username`, `profile_pic`) VALUES
(1, '2021-07-10 15:20:00', 1, 3, 'This is one of the funniest books I\'ve ever read!', 0, 0, 'test', 'pic3.png'),
(2, '2021-07-10 21:19:59', 1, 1, '', 0, 0, 'test', 'pic3.png'),
(3, '2021-07-10 21:50:47', 1, 1, 'pl', 0, 0, 'test', 'pic3.png'),
(4, '2021-07-10 22:06:03', 1, 1, 'ok', 0, 0, 'test', 'pic3.png'),
(5, '2021-07-10 22:09:12', 1, 1, 'This was a really great book', 0, 0, 'test', 'pic3.png'),
(6, '2021-07-10 23:06:08', 1, 3, 'So funny!', 0, 0, 'test', 'pic3.png'),
(7, '2021-07-10 23:07:43', 1, 3, 'So funny!', 0, 0, 'test', 'pic3.png');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `book_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `genre`, `summary`, `book_pic`) VALUES
(1, '1984', 'George Orwell', 'fiction', 'Winston Smith toes the Party line, rewriting history to satisfy the demands of the Ministry of Truth. With each lie he writes, Winston grows to hate the Party that seeks power for its own sake and persecutes those who dare to commit thoughtcrimes. But as he starts to think for himself, Winston can’t escape the fact that Big Brother is always watching...', '1984.png'),
(2, 'The Little Prince', 'Antoine de Saint-Exupéry', 'Sci-Fi', 'Few stories are as widely read and as universally cherished by children and adults alike as The Little Prince. Richard Howard\'s translation of the beloved classic beautifully reflects Saint-Exupéry\'s unique and gifted style. Howard, an acclaimed poet and one of the preeminent translators of our time, has excelled in bringing the English text as close as possible to the French, in language, style, and most important, spirit. The artwork in this edition has been restored to match in detail and in color Saint-Exupéry\'s original artwork. Combining Richard Howard\'s translation with restored original art, this definitive English-language edition of The Little Prince will capture the hearts of readers of all ages.', 'littleprince.png'),
(3, 'A Bad Beginning', 'Lemony Snicket', 'Childrens Fiction', 'In the tradition of great storytellers, from Dickens to Dahl, comes an exquisitely dark comedy that is both literary and irreverent, hilarious and deftly crafted. Never before has a tale of three likeable and unfortunate children been quite so enchanting, or quite so uproariously unhappy. \r\n', 'badbeginnings.png'),
(4, 'The Hunger Games', 'Suzanne Collins', 'Young Adult Fiction', 'Winning means fame and fortune. Losing means certain death. The Hunger Games have begun. . . . ', 'hungergames.png'),
(5, 'Pride and Prejudice', 'Jane Austen', 'Fiction', '\"It is a truth universally acknowledged, that a single man in possession of a good fortune, must be in want of a wife.\" So begins Pride and Prejudice, Jane Austens classic novel of manners and mores in early-nineteenth-century England. As the Bennets prepare their five grown daughters to enter into society, each shows personality traits that illuminate their future prospects as wives. Jane, the oldest, is the most demure and traditional, and Lydia, the youngest, the most headstrong and impulsive. Attention centers on haughty second-born Elizabeth, and her blossoming relationship with the dashing but aloof Fitzwilliam Darcy. Adversaries at first in the endless rounds of balls, parties, and social gatherings, they soon develop a grudging respect for one another that blossoms into romance when each comes to appreciate the tender feelings that course beneath the veneer of their propriety and reserve.', 'prideandprejudice.png'),
(6, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 'The Great Gatsby, F. Scott Fitzgeralds third book, stands as the supreme achievement of his career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted “gin was the national drink and sex the national obsession,” it is an exquisitely crafted tale of America in the 1920s.', 'gatsby.png'),
(7, 'Gone Girl', 'Gillian Flynn', 'Fiction Thriller', 'On a warm summer morning in North Carthage, Missouri, it is Nick and Amy Dunnes fifth wedding anniversary. Presents are being wrapped and reservations are being made when Nicks clever and beautiful wife disappears. Husband-of-the-Year Nick isn’t doing himself any favors with cringe-worthy daydreams about the slope and shape of his wife’s head, but passages from Amys diary reveal the alpha-girl perfectionist could have put anyone dangerously on edge. Under mounting pressure from the police and the media—as well as Amy’s fiercely doting parents—the town golden boy parades an endless series of lies, deceits, and inappropriate behavior. Nick is oddly evasive, and hes definitely bitter—but is he really a killer?', 'gonegirl.png'),
(8, 'The Shining', 'Stephen King', 'Fiction Thriller', 'Jack Torrances new job at the Overlook Hotel is the perfect chance for a fresh start. As the off-season caretaker at the atmospheric old hotel, he’ll have plenty of time to spend reconnecting with his family and working on his writing. But as the harsh winter weather sets in, the idyllic location feels ever more remote . . . and more sinister. And the only one to notice the strange and terrible forces gathering around the Overlook is Danny Torrance, a uniquely gifted five-year-old.', 'shining.png'),
(9, 'The House At Pooh Corner', 'A.A. Milne', 'Childrens Fiction', 'Return to the Hundred Acre Wood in A.A. Milnes second collection of Pooh stories, The House at Pooh Corner. Here you will rediscover all the characters you met in Winnie-the-Pooh: Christopher Robin, Eeyore, Owl, Piglet, Kanga, tiny Roo, and, of course, Pooh himself. Joining them is the thoroughly bouncy and lovable Tigger, who leads the rest into unforgettable adventures. ', 'pooh.png');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `post` text NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `date`, `user_id`, `post`, `image`, `comments`, `likes`, `username`, `profile_pic`) VALUES
(1, '2021-07-10 15:17:40', 1, 'testing', '', 0, 0, 'test', 'pic3.png'),
(14, '2021-07-10 15:17:46', 1, 'yay', NULL, 0, 0, 'test', 'pic3.png'),
(15, '2021-07-10 15:17:53', 1, 'hello there!', NULL, 0, 0, 'test', 'pic3.png'),
(16, '2021-07-10 15:18:00', 1, 'adding another post', NULL, 0, 0, 'test', 'pic3.png'),
(17, '2021-07-10 15:18:19', 1, 'That\'s my favorite book!', NULL, 0, 0, 'test', 'pic3.png'),
(18, '2021-07-10 15:18:27', 3, 'I love that book too!', NULL, 0, 0, 'DaisyDuck1', 'pic1.png'),
(19, '2021-07-10 15:18:34', 2, 'I read that last summer :)', NULL, 0, 0, 'MickMouse', 'mickey.jpg'),
(20, '2021-07-10 15:18:45', 1, 'hello there!', NULL, 0, 0, 'test', 'pic3.png'),
(21, '2021-07-10 15:18:55', 1, 'hey you!', NULL, 0, 0, 'test', 'pic3.png'),
(22, '2021-07-10 15:19:08', 3, 'hello', NULL, 0, 0, 'DaisyDuck1', 'pic1.png'),
(23, '2021-07-11 00:28:36', 2, 'I just finished the Odyssey...', NULL, 0, 0, 'MickMouse', 'mickey.jpg'),
(24, '2021-07-11 00:29:32', 5, 'That is amazing Mickey! Such an epic journey...', NULL, 0, 0, 'SuzyQ1!', 'pic2.png'),
(25, '2021-07-11 00:33:43', 6, 'I have been reading Capt Underpants...its a new classic! LOL', NULL, 0, 0, 'Jonesy', 'pic6.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(1) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `cover_pic` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `role`, `profile_pic`, `cover_pic`) VALUES
(1, 'Mercy', 'Thigpen', 'me@gmail.com', 'test', 'test', 1, 'pic3.png', 'bookwall.jpg'),
(2, 'Mickey', 'Mouse', 'themouse@disney.com', 'MickMouse', 'test', 0, 'mickey.jpg', 'castle.jpg'),
(3, 'Daisy', 'Duck', 'flor@disney.com', 'DaisyDuck1', 'bow', 0, 'pic1.png', 'beach.jpg'),
(4, 'Steven', 'Segal', 'action@gmail.com', 'ZenWarrior', 'hola', 0, 'pic4.png', 'zen.jpg'),
(5, 'Suzy', 'Q', 'cupcake@hotmail.com', 'SuzyQ1!', 'sweets', 1, 'pic2.png', 'books.jpeg'),
(6, 'Julian', 'Gonzalez', 'jgo@gmail.com', 'Jonesy', '1234', 0, 'pic6.png', 'beach.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookposts`
--
ALTER TABLE `bookposts`
  ADD PRIMARY KEY (`bookpost_id`),
  ADD KEY `date` (`date`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `comments` (`comments`),
  ADD KEY `likes` (`likes`),
  ADD KEY `username` (`username`),
  ADD KEY `profile_pic` (`profile_pic`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `date` (`date`),
  ADD KEY `likes` (`likes`),
  ADD KEY `comments` (`comments`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `email` (`email`),
  ADD KEY `username` (`username`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookposts`
--
ALTER TABLE `bookposts`
  MODIFY `bookpost_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
