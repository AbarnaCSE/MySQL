SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `artists` (`id`, `name`, `picture`, `contact_no`) VALUES
(1, 'kamal hassan', 'kamal.jpeg', '980'),
(2, 'Rajnikanth', 'rajnikanth.jpeg', '70879');
CREATE TABLE `artist_skills` (
  `id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `artist_skills` (`id`, `artist_id`, `skill_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5);
CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Fantasy'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Romance'),
(9, 'Science fiction'),
(10, 'Thriller');
CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `movie` (`id`, `name`) VALUES
(1, 'Vikram'),
(2, 'Enthiran');
CREATE TABLE `movie_artists` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `movie_artists` (`id`, `movie_id`, `artist_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4);
CREATE TABLE `movie_genre` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2);
CREATE TABLE `movie_medias` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `image_video` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `movie_medias` (`id`, `movie_id`, `image_video`) VALUES
(1, 1, 'vikram_poster'),
(2, 2, 'enthiran_poster');
CREATE TABLE `movie_reviews` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reviews` text NOT NULL,
  `created_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `movie_reviews` (`id`, `movie_id`, `user_id`, `reviews`, `created_datetime`) VALUES
(1, 1, 1, 'good movie', '2022-10-11 11:27:06'),
(2, 1, 2, 'not bad', '2022-10-11 11:27:06'),
(3, 1, 3, 'nice movie', '2022-10-11 11:27:37');
CREATE TABLE `movie_roles` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `movie_roles` (`id`, `movie_id`, `artist_id`, `role_id`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 2),
(3, 1, 1, 4);
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Producer'),
(2, 'Director'),
(3, 'Assistant Director'),
(4, 'Photography'),
(5, 'Camera Operator'),
(6, 'Assistant Camera'),
(7, 'art designer'),
(8, 'music director'),
(9, 'actor -Hero'),
(10, 'actress -Heroine'),
(11, 'villain'),
(12, 'comedian');
CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `skills` (`id`, `name`) VALUES
(1, 'can sing'),
(2, 'can do music'),
(3, 'can play emotional character'),
(4, 'can play as villain');
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'ramu', 'ramu@gmail.com', '12346'),
(2, 'david', 'david@gmail.com', '123456');
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `artist_skills`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `movie_artists`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `movie_medias`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `movie_reviews`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `movie_roles`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `artist_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `movie_artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `movie_medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `movie_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `movie_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;