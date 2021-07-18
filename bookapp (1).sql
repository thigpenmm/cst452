-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jul 18, 2021 at 06:14 PM
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
(5, '2021-07-14 01:48:15', 2, 1, 'This was a really great book', 0, 0, 'MickMouse', 'mickey.jpg'),
(6, '2021-07-14 01:48:55', 3, 3, 'So funny!', 0, 0, 'DaisyDuck1', 'pic1.png'),
(8, '2021-07-14 01:20:56', 1, 7, 'I finished the book in less than 3 days, compulsively turning page after page, needing to know what would happen next, who to trust, how it would all end. And, at the end, I can add one more thing to the list of things I know about this book:D. A brilliantly written and plotted mystery, a miasma of wretchedness and hate; a book that I devoured but deeply, utterly abhorred.', 0, 0, 'test', 'pic3.png'),
(9, '2021-07-14 01:49:31', 5, 7, 'It\'s been a long time since I read a psychological thriller and so I have had this at the top of the genre on my tbr for a while.\r\n\r\nIt took me a good 15/20% to get into the story but once I did I was hooked. I have to admit up until then I kept changing my mind about what happened but then it started becoming quite obvious.\r\n\r\nIt was around this point that I started changing my feelings towards the main characters - Nick & Amy - too. At first I was disliking one and warmed to the other, but then it completely reversed even with everything that kept coming out of the woodwork about them. Go though - I absolutely loved her and her wit all the way through!', 0, 0, 'SuzyQ1!', 'pic2.png'),
(10, '2021-07-14 01:55:11', 4, 8, 'I\'ve been wanting to read The Shining for a long time - I was never one for popular fiction, contemporary bestsellers or modern horror, but I knew The Shining was a stone cold classic that needed to be read, especially to get a better understanding of the film (and to learn how the director altered it to his own vision). I\'d recently read in an online forum people listing The Shining as a film that was way better than the book and I saw this as a renewed challenge to figure out how silly that sort of a statement is (since I had no doubt that the book would be good in its own, different way).', 0, 0, 'ZenWarrior', 'pic4.png'),
(11, '2021-07-14 01:24:59', 1, 8, 'I had seen the movie before I read the book so going in I thought I knew what to expect. But I was actually caught off guard and found myself loving the book more then I loved the movie. I still think the movie is good but this book is just... more.', 0, 0, 'test', 'pic3.png'),
(12, '2021-07-14 01:50:08', 2, 9, 'If you have never read about Poohs adventures with his forest friends, I urge you to remedy that deficiency immediately !! And if you were fortunate enough to have done that many years ago in your younger days (as was my case) I still urge you to take a refresher course in Poohs world. I found it as much fun (and as enlightening) this time as I did many decades ago.', 0, 0, 'MickMouse', 'mickey.jpg'),
(13, '2021-07-14 01:50:40', 4, 9, 'I\'m reading these stories now with an adult eye, and realizing just how well written they are. They are children\'s stories but have that characteristic of the best children\'s stories- namely that adults will enjoy them at a different level. The observations about the characters in this book are superb.', 0, 0, 'ZenWarrior', 'pic4.png'),
(14, '2021-07-14 01:54:38', 5, 6, 'Since I read it in 9th grade, The Great Gatsby has been one of my favorite books. Every once in a while I give it a re-read, only to find my reading of the timeless tale of love lost, disillusionment, and new money society to be more relevant than the last. The rich metaphors and symbols in this book are a fantastic introduction to the ideas, and a pleasure for young and old readers alike.', 0, 0, 'SuzyQ1!', 'pic2.png'),
(15, '2021-07-14 01:32:27', 1, 6, 'Well, what a fantastic book club meeting last evening. The Great Gatsby was hailed as the greatest novel ever written and F. Scott Fitzgerald quite rightly earned his place as the finest writer of his or any other generation. It was also the first book in Farsley Book Club history to score a full house 100% approval rating!', 0, 0, 'test', 'pic3.png'),
(16, '2021-07-14 01:51:14', 5, 5, 'I have always loved this story. I can\'t ever remember a time when I didn\'t know it. Before I was old enough to read a such a book, I was introduced to it\'s lessons of not judging people on first acquaintance. Growing up it was one of my parents\' favorite movies. With knowing the story so well, I was pleased to find when I read it the first time as a teenager that there was even more to learn about the characters in print. I have since read it through several times.', 0, 0, 'SuzyQ1!', 'pic2.png'),
(17, '2021-07-14 01:56:26', 3, 5, 'It has been twenty years since I have read this classic book. I was inspired to read it again after watching the movie with Keira Knightley. The movie version did an excellent job condensing and even overlapping scenes within the book without causing confusion or becoming unfaithful to the characters or spirit of the book. The story will always remain a classic.', 0, 0, 'DaisyDuck1', 'pic1.png'),
(18, '2021-07-14 01:51:39', 6, 4, '\"MAY THE ODDS BE EVER IN YOUR FAVOUR\"\r\nSet in a dystopian world of Panem (post apocalyptic North America), where twelve districts surround the Capitol. This book made me think about our world and what we truly value. ', 0, 0, 'Jonesy', 'pic6.png'),
(19, '2021-07-14 01:53:27', 6, 2, 'Saint-Expury was a fascinating person! He wrote several books and died over occupied France flying in a plane during World War II. This little gem of a book deals with a tiny yellow haired prince who lives on a tiny star. For some reason he falls to earth and lands in the desert. There he meets the narrator of the story whose plane has crashed. The Little Prince tells about his meetings with a business executive who is consumed by his work; a lamplighter, a fox, a snake and other people and animals. He teaches us about love by his tender caring for a tiny flower protected by only four thorns who lives on his star. The tale also focuses on the greatest human gift which is love and taking responsibility in life. Subject to multiple interpretations this tale and the beautiful art work included in the story will enchant children and grownups for generation to come', 0, 0, 'Jonesy', 'pic6.png'),
(20, '2021-07-14 01:39:14', 1, 2, 'This was a simple, yet profound, allegorical classic… one that can be enjoyed from the ages of 9 to 99, as it can be interpreted on so many different levels. On a very basic level, it allows the reader to reflect on what is truly important in life, “what is essential, is invisible to the eye.” It can also be interpreted by an older audience as a war fable, having political symbolism. ', 0, 0, 'test', 'pic3.png'),
(21, '2021-07-14 01:54:02', 3, 3, 'It has been a while since I last read this book and I was surprised at how much I enjoyed returning to its pages. The most unique, intriguing, and frustrating aspect of the book is that the main character of the story could be argued to be the narrator. Everything is told through the voice of Lemony Snicket, which is actually the narrator and not the author\'s actual name. The style is not a typical style for most children\'s books and it is pulled off with success.', 0, 0, 'DaisyDuck1', 'pic1.png'),
(22, '2021-07-14 01:42:05', 1, 3, 'This book tells the story of Violet, Klaus, and Sunny Baudelaire, three orphans whose parents died in a terrible fire. They were sent to live with Count Olaf, a terrible, greedy man who was after the Baudelaire\'s fortune. The story tells of how the Baudelaire children stop Count Olaf\'s evil plans. This first book, in a 13 story series, is a bad, but interesting beginning to The Series of Unfortunate Events.', 0, 0, 'test', 'pic3.png'),
(23, '2021-07-14 01:52:08', 4, 1, 'This book is written back in 1948, but hats off to author who very precisely tell what going to be happened after decades. After 60 years since it was published, it remains one of the most hauntingly terrifying portrayals of future of mankind. ', 0, 0, 'ZenWarrior', 'pic4.png'),
(24, '2021-07-14 02:06:16', 1, 1, 'Some parts were scary. But overall, I just like that it made me think.', 0, 0, 'test', 'pic3.png'),
(25, '2021-07-17 13:40:27', 5, 3, 'I was surprised at how much I enjoyed this book. I cannot wait to finish the series!', 0, 0, 'SuzyQ1!', 'pic2.png'),
(26, '2021-07-17 15:59:59', 5, 4, 'Did anyone else like this one? I was so thrown off! Totally thought it was going to be like Twilight, lol', 0, 0, 'DaisyDuck1', 'pic1.png'),
(27, '2021-07-17 15:59:59', 5, 10, 'I’ve been chomping at the bit to get my kids interested in reading books that aren’t carried by the illustrations, and CHARLIE AND THE CHOCOLATE FACTORY was the book that finally got us over that hurdle! My 4-year-old stayed engaged and followed the story, even brought it up and talked about the characters at times that we were not reading. Even my son (almost 3) generally paid attention, but mostly because he follows his sister’s lead. Other books we have tried recently were too long-winded or slow to keep my daughters attention, but Roald Dahls masterpiece was a hit. I think the vividness of the exaggerated, one-dimensional characters helps young readers/listeners cement the characters into their minds, providing strong anchors to help keep focused on the story. This is particularly true if you can give each of the characters their own recognizable voice when reading this one out loud!', 0, 0, 'ZenWarrior', 'pic4.png'),
(28, '2021-07-17 16:03:43', 5, 10, 'Charlie and the Chocolate Factory is a story to be read again and again. It captures Dahls excellence in making a hero out of the least popular child around. This is a great tale to reinforce that wealth does not trump poverty and that good guys can finish first. Reading this book in secondary school helps students grasp the deeper meanings of themes, symbols and motifs that can be missed at first glance.', 0, 0, 'MickMouse', 'mickey.jpg'),
(29, '2021-07-17 15:59:59', 5, 11, 'Hey hey hey! It\'s cool out of all the reviews you decided to read this one, thank you! So, I read this series during quarantine because I was looking for a new book series because I finished the \'Harry Potter\' book series. At first I wasn\'t so amused by the book but after 10 or 20 pages I was enjoying it so much! I found it funny and another great series! Spoilers!: lets add all the info and facts about these characters! Greg: Greg is like every other boy that I know he likes video games, he is actually quite rude to be honest! Mom/Mum: Kind, healthy, chatty. Dad: Frustrated, hard-working, busy. Rodrick: Has a liking to rock\'n\'roll, moody, prankster. Manny: Young , silly, anti-social (ish) Lastly Rowley: Kind, bullied, smart. That\'s all for the main characters now time for the story!: See, I find Greg as very manipulative which isn\'t good for a boy his age…its.just the way he treats Rowley isn\'t any nice at all. Greg starts middle school for the whole story.', 0, 0, 'Jonesy', 'pic6.png'),
(30, '2021-07-17 15:43:35', 5, 11, 'I got this book when I was scrolling through some people\'s shelves on Goodreads. I was immediately intrigued to read this book as the reviews were great and my friends had told me what a good read this is. I was satisfied with the structure of the book when I was reading the first few pages. This book was interestingly funny and I enjoyed the storylines. Even though this is classed as a diary book and every day was supposed to be different there were quite a few parts where it was a few days leading up to one big dilemma/ situation. This book was enjoyable, easy to understand and funny. I would recommend this book to seven to twelve year olds.', 0, 0, 'SuzyQ1!', 'pic2.png'),
(31, '2021-07-17 16:03:00', 5, 12, 'Perhaps like you, this book appealed to me because I was going through a very difficult time. The title certainly jumps out. And book definitely delivers. Max Lucado uses the story of Jacobs son Joseph, and other helpful vignettes, to remind us that if we keep God in charge, He can turn any mess, no matter how big, into something good. Not just something tolerable, but something GOOD.\r\n\r\nPersonal stories and examples from his friends help drive the authors point home, and make it all very relatable to modern traumas we might deal with.\r\n\r\nThis book began the healing process I needed, right when I needed it most.', 0, 0, 'Jonesy', 'pic6.png'),
(32, '2021-07-17 16:03:00', 5, 12, 'Rarely do I read self help books or books on inspiration, however this was an exception, and I am glad I took the time to read it. I found a new sayings \"Keep calm and carry on.\"\r\n\r\nThe story began with Joseph and his cloak of many colors, and how his brothers striped him of his coat cast him in a deep well, and left him to die. Many more horrible things happened to Joseph, but he persevered. He became a leader, he learned quickly attitude takes you very far.\r\n\r\nAs the story progress, anything that happened badly to Joseph, the author turned it into a story of modern times.\r\n\r\nI also learned, but probably knew and just needed to be reminded. God is always with you in a crisis.\r\n\r\nThis was a quick easy enjoyable read.', 0, 0, 'hawkEye123', 'pic5.png'),
(33, '2021-07-17 15:56:03', 5, 12, 'While I enjoy his writing, I went into this knowing that I would get through this and I was hoping for different insights. This was basically the story of Joseph and how God through his grace and mercy can turn bad into good. I already knew this and could have just as easily read this in the Bible. I was a little disappointed.', 0, 0, 'SuzyQ1!', 'pic2.png'),
(37, '2021-07-18 16:50:10', 8, 1, 'This was a pretty scary, in-depth read for me too', 0, 0, 'hawkEye123', 'pic5.png'),
(38, '2021-07-18 16:53:56', 8, 2, 'It is very sweet to imagine the world from a foreign or just an innocent eye.', 0, 0, 'hawkEye123', 'pic5.png'),
(39, '2021-07-18 16:55:15', 8, 3, 'Those poor kids. However the creativity and sheer determination they show, should be admired!', 0, 0, 'hawkEye123', 'pic5.png'),
(41, '2021-07-18 17:28:30', 9, 6, 'I enjoyed this one as well, read it in high school.', 0, 0, 'hawkEye123', 'pic5.png'),
(42, '2021-07-18 17:30:22', 1, 14, 'Such a sad beginning for a life well lived!', 0, 0, 'test', 'pic3.png');

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
(9, 'The House At Pooh Corner', 'A.A. Milne', 'Childrens Fiction', 'Return to the Hundred Acre Wood in A.A. Milnes second collection of Pooh stories, The House at Pooh Corner. Here you will rediscover all the characters you met in Winnie-the-Pooh: Christopher Robin, Eeyore, Owl, Piglet, Kanga, tiny Roo, and, of course, Pooh himself. Joining them is the thoroughly bouncy and lovable Tigger, who leads the rest into unforgettable adventures. ', 'pooh.png'),
(10, 'Charlie and the Chocolate Factory', 'Roald Dahl', 'Childrens Fiction', 'Nobody has seen Willy Wonka—or the inside of his amazing chocolate factory—in years. When Wonka announces his plans to invite the winners of five Golden Tickets to visit his factory, the whole world is after those tickets! Little Charlie Bucket longs to find a Golden Ticket and get the chance to visit the mysterious factory and well, he has just as much chance as anyone else, doesnt he?', 'chocolatefactory.png'),
(11, 'Diary of a Wimpy Kid', 'Jeff Kinney', 'Childrens Fiction', 'It’s a new school year, and Greg Heffley finds himself thrust into middle school, where undersized weaklings share the hallways with kids who are taller, meaner, and already shaving. The hazards of growing up before you’re ready are uniquely revealed through words and drawings as Greg records them in his diary.\r\n\r\nIn book one of this debut series, Greg is happy to have Rowley, his sidekick, along for the ride. But when Rowley’s star starts to rise, Greg tries to use his best friend’s newfound popularity to his own advantage, kicking off a chain of events that will test their friendship in hilarious fashion.', 'wimpykid.png'),
(12, 'You will Get Through This: Hope and Help for Your Turbulent Times', 'Max Lucado', 'Christian Living', 'Max reminds readers God does not promise that getting through trials will be quick or painless. That certainly was not the case for Joseph who was tossed in a pit by his brothers, sold into slavery, wrongfully imprisoned, forgotten and dismissed, but God ultimately used the intended evil against Joseph for a greater purpose.', 'getThroughThis.png'),
(13, 'Water for Elephants', 'Sara Gruen', 'Fiction', 'A young veterinary student joins the circus and sets out on an adventure.', 'elephants.png'),
(14, 'Where the Crawdads Sing', 'Delia Owens', 'Fiction', 'A young girl growing up in a rural, swamp town surviving on her own.', 'crawdads.png');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(18, '2021-07-10 15:18:27', 3, 'I love that book too!', NULL, 0, 0, 'DaisyDuck1', 'pic1.png'),
(19, '2021-07-10 15:18:34', 2, 'I read that last summer :)', NULL, 0, 0, 'MickMouse', 'mickey.jpg'),
(21, '2021-07-10 15:18:55', 1, 'hey you!', NULL, 0, 0, 'test', 'pic3.png'),
(22, '2021-07-10 15:19:08', 3, 'hello', NULL, 0, 0, 'DaisyDuck1', 'pic1.png'),
(23, '2021-07-11 00:28:36', 2, 'I just finished the Odyssey...', NULL, 0, 0, 'MickMouse', 'mickey.jpg'),
(24, '2021-07-11 00:29:32', 5, 'That is amazing Mickey! Such an epic journey...', NULL, 0, 0, 'SuzyQ1!', 'pic2.png'),
(25, '2021-07-11 00:33:43', 6, 'I have been reading Capt Underpants...its a new classic! LOL', NULL, 0, 0, 'Jonesy', 'pic6.png'),
(26, '2021-07-18 16:49:23', 8, 'I just started Cesars Way. Learning a lot about the Cesar Milan method to dog training and life in general.', NULL, 0, 0, 'hawkEye123', 'pic5.png'),
(27, '2021-07-18 17:27:22', 9, 'I really like cookbooks! ', NULL, 0, 0, 'hawkEye123', 'pic5.png');

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
  `cover_pic` varchar(100) DEFAULT NULL,
  `status` text NOT NULL,
  `FaveBook` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `role`, `profile_pic`, `cover_pic`, `status`, `FaveBook`) VALUES
(1, 'Mercy', 'Thigpen', 'me@gmail.com', 'test', 'test', 1, 'pic3.png', 'bookwall.jpg', 'active', 'Memoirs of a Geisha'),
(2, 'Mickey', 'Mouse', 'themouse@disney.com', 'MickMouse', 'test', 0, 'mickey.jpg', 'castle.jpg', 'active', 'Alice in wonderland'),
(3, 'Daisy', 'Duck', 'flor@disney.com', 'DaisyDuck1', 'bows', 0, 'pic1.png', 'maze.jpg', 'active', 'Matilda by Roald Dahl'),
(4, 'Steven', 'Segal', 'action@gmail.com', 'ZenWarrior', 'hola', 0, 'pic4.png', 'zen.jpg', 'active', '100 Deadly Skills'),
(5, 'Suzy', 'Q', 'cupcake@hotmail.com', 'SuzyQ1!', 'sweets', 1, 'pic2.png', 'books.jpeg', 'suspended', 'Emma by Jane Austen'),
(6, 'Julian', 'Gonzalez', 'jgo@gmail.com', 'Jonesy', '1234', 0, 'pic6.png', 'beach.jpg', 'active', 'To Kill a Mockingbird');

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
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `type` (`type`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

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
  MODIFY `bookpost_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
