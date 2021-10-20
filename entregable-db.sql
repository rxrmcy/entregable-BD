DROP DATABASE IF EXISTS entregable_db;
CREATE DATABASE entregable_db;
USE entregable_db;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL,
  `email` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`));
  
INSERT INTO users (id, name, email) VALUES (1, 'Gabriella Smith', 'gabs@gmail.com');
INSERT INTO users (id, name, email) VALUES (2, 'Johnathan Dean', 'john_d9@hotmail.com');
INSERT INTO users (id, name, email) VALUES (3, 'Louise Tate', 'loutate@google.com');
INSERT INTO users (id, name, email) VALUES (4, 'Ramon Wells', 'ram.wel@yahoo.com');
INSERT INTO users (id, name, email) VALUES (5, 'Walter Berts', 'walterb@hotmail.com');
INSERT INTO users (id, name, email) VALUES (6, 'Alicia Vollingher', 'avoll@gmail.com');
INSERT INTO users (id, name, email) VALUES (7, 'Nene Matun', 'nema.87@prodigy.net.mx');
INSERT INTO users (id, name, email) VALUES (8, 'Douglas Fierce', 'dfierce@gmail.com');
INSERT INTO users (id, name, email) VALUES (9, 'Paula Strat', 'paula_strat@google.com');
INSERT INTO users (id, name, email) VALUES (10, 'Carson Eagle', 'theeaglec@hotmail.com');

DROP TABLE IF EXISTS `categories`;  
CREATE TABLE `categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`));

INSERT INTO categories (id, name) VALUES (1,'Home');
INSERT INTO categories (id, name) VALUES (2,'Work');
INSERT INTO categories (id, name) VALUES (3,'School');
INSERT INTO categories (id, name) VALUES (4,'Family');
INSERT INTO categories (id, name) VALUES (5,'Hobbies');
INSERT INTO categories (id, name) VALUES (6,'Books');
INSERT INTO categories (id, name) VALUES (7,'Podcasts');
INSERT INTO categories (id, name) VALUES (8,'Friends');
INSERT INTO categories (id, name) VALUES (9,'Interests');
INSERT INTO categories (id, name) VALUES (10,'Travel');


DROP TABLE IF EXISTS `notes`;  
CREATE TABLE `notes_db`.`notes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL DEFAULT 'Sin título',
  `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edited` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` TEXT NULL,
  `user` INT NOT NULL,
  `delete` TINYINT NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `user_id_foreign` (`user`),
  CONSTRAINT `user_id_foreign` FOREIGN KEY (`user`) REFERENCES `users` (`id`));
  
INSERT INTO notes (id, title, created, edited, description, user) VALUES (1, 'Suspendisse potenti.', '2021-01-11', '2021-07-03', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 4);
INSERT INTO notes (id, title, created, edited, description, user) VALUES (2, 'Vivamus vel nulla eget eros elementum pellentesque.', '2021-08-11', '2021-02-27', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 2);
INSERT INTO notes (id, title, created, edited, description, user) VALUES (3, 'Nullam sit amet turpis elementum ligula vehicula consequat.', '2021-08-18', '2020-10-20', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', 1);
INSERT INTO notes (id, title, created, edited, description, user) VALUES (4, 'Phasellus id sapien in sapien iaculis congue.', '2021-08-23', '2020-11-14', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis.', 7);
INSERT INTO notes (id, title, created, edited, description, user) VALUES (5, 'Vivamus vel nulla eget eros elementum pellentesque.', '2020-12-11', '2020-12-25', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 3);
INSERT INTO notes (id, title, created, edited, description, user) VALUES (6, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula', '2021-02-23', '2020-10-11', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', 5);
INSERT INTO notes (id, title, created, edited, description, user) VALUES (7, 'Donec ut mauris eget massa tempor convallis.', '2021-04-22', '2021-09-28', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 9);
INSERT INTO notes (id, title, created, edited, description, user) VALUES (8, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2021-06-20', '2021-04-16', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 8);
INSERT INTO notes (id, title, created, edited, description, user) VALUES (9, 'Nunc nisl.', '2021-08-22', '2021-09-06', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 6);
INSERT INTO notes (id, title, created, edited, description, user) VALUES (10, 'Nulla facilisi.', '2021-07-06', '2021-03-26', 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 6);
 
DROP TABLE IF EXISTS `notes_categories`;  
CREATE TABLE `notes_categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_note` INT NOT NULL,
  `id_category` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_note_foreign` (`id_note`),
  KEY `id_category_foreign` (`id_category`),
  CONSTRAINT `id_note_foreign` FOREIGN KEY (`id_note`) REFERENCES `notes` (`id`),
  CONSTRAINT `id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`));
  
    
INSERT INTO notes_categories (id, id_note, id_category) VALUES (1, 7, 9);
INSERT INTO notes_categories (id, id_note, id_category) VALUES (2, 5, 8);
INSERT INTO notes_categories (id, id_note, id_category) VALUES (3, 3, 4);
INSERT INTO notes_categories (id, id_note, id_category) VALUES (4, 6, 6);
INSERT INTO notes_categories (id, id_note, id_category) VALUES (5, 3, 2);
INSERT INTO notes_categories (id, id_note, id_category) VALUES (6, 5, 2);
INSERT INTO notes_categories (id, id_note, id_category) VALUES (7, 8, 1);
INSERT INTO notes_categories (id, id_note, id_category) VALUES (8, 9, 3);
INSERT INTO notes_categories (id, id_note, id_category) VALUES (9, 5, 8);
INSERT INTO notes_categories (id, id_note, id_category) VALUES (10, 4, 6);