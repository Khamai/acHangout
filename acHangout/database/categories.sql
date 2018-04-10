<<<<<<< HEAD
INSERT INTO categories (name, description) VALUES('asianfoods','food');
INSERT INTO categories (name, description) VALUES('europefoods','food');
INSERT INTO categories (name, description) VALUES('americanfoods','food');
INSERT INTO categories (name, description) VALUES('fulltimeprograms','program');
INSERT INTO categories (name, description) VALUES('parttimeprograms','program');
<<<<<<< HEAD
INSERT INTO categories (name, description) VALUES('musics','media');
INSERT INTO categories (name, description) VALUES('films','media');
INSERT INTO categories (name, description) VALUES('tvseries','media');
INSERT INTO categories (name, description) VALUES('tvshows','media');
INSERT INTO categories (name, description) VALUES('anime','media');
INSERT INTO categories (name, description) VALUES('photos','media');
INSERT INTO categories (name, description) VALUES('soccer','sport');
INSERT INTO categories (name, description) VALUES('americanfootball','sport');
INSERT INTO categories (name, description) VALUES('basketball','sport');
INSERT INTO categories (name, description) VALUES('baseball','sport');
INSERT INTO categories (name, description) VALUES('hockey','sport');
INSERT INTO categories (name, description) VALUES('fitness','sport');
INSERT INTO categories (name, description) VALUES('badminton','sport');
INSERT INTO categories (name, description) VALUES('swimming','sport');
INSERT INTO categories (name, description) VALUES('tennis','sport');
INSERT INTO categories (name, description) VALUES('others','sport');
INSERT INTO categories (name, description) VALUES('askforhelp','help');
INSERT INTO categories (name, description) VALUES('event','activity');
INSERT INTO categories (name, description) VALUES('indoor','activity');
INSERT INTO categories (name, description) VALUES('outdoor','activity');
INSERT INTO categories (name, description) VALUES('asia','book');
INSERT INTO categories (name, description) VALUES('africa','book');
INSERT INTO categories (name, description) VALUES('europe','book');
INSERT INTO categories (name, description) VALUES('america','book');
INSERT INTO categories (name, description) VALUES('manga','book');
INSERT INTO categories (name, description) VALUES('novel','book');
INSERT INTO categories (name, description) VALUES('funny','funnyspot');
INSERT INTO categories (name, description) VALUES('renting','classified');
INSERT INTO categories (name, description) VALUES('usedstuff','classified');
INSERT INTO categories (name, description) VALUES('others','classified');



=======
>>>>>>> refs/remotes/origin/Kha
select * from categories;
=======
use form;
select * from subcategories;
insert into subcategories (name, description, catid, author) values ('Asian Foods', 'food', 1, 1);
insert into subcategories (name, description, catid, author) values ('European Foods','food',  1, 1);
insert into subcategories (name, description, catid, author) values ('American Foods','food',  1,1);

insert into subcategories (name, description, catid, author) values ('EAP','program',  2,1);
insert into subcategories (name, description, catid, author) values ('Computer Programmer','program',  2,1);
insert into subcategories (name, description, catid, author) values ('Computer Science','program',  2,1);
insert into subcategories (name, description, catid, author) values ('Business','program',  2,1);

insert into subcategories (name, description, catid, author) values ('Music','media',  3,1);
insert into subcategories (name, description, catid, author) values ('Film','media',  3,1);
insert into subcategories (name, description, catid, author) values ('TV Series','media',  3,1);
insert into subcategories (name, description, catid, author) values ('TV Shows','media',  3,1);
insert into subcategories (name, description, catid, author) values ('Anime','media',  3,1);
insert into subcategories (name, description, catid, author) values ('Photos','media',  3,1);

insert into subcategories (name, description, catid, author) values ('Soccer','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('American Football','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Basketball','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Baseball','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Hockey','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Fitness','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Badminton','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Swimming','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Tennis','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Aerobics','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Boxing','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Diving','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Climbing','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Cycling','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Golf','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Judo','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Karate','sport',  4,1);
insert into subcategories (name, description, catid, author) values ('Bowling','sport',  4,1);

insert into subcategories (name, description, catid, author) values ('Event','activity',  6,1);
insert into subcategories (name, description, catid, author) values ('Indoor Activities','activity',  6,1);
insert into subcategories (name, description, catid, author) values ('Outdoor Activities','activity',  6,1);

insert into subcategories (name, description, catid, author) values ('Manga','book',  7,1);
insert into subcategories (name, description, catid, author) values ('Novel','book',  7,1);

insert into subcategories (name, description, catid, author) values ('Houses/Apts For Renting','classified',  9,1);
insert into subcategories (name, description, catid, author) values ('Used Stuff','classified',  9,1);


select * from categories;
select * from post order by id desc;
select * from users;
select * from profile;
select p.topic, u.username, p.date, count(r.postid) as comment, COALESCE(ra.liked,0) + COALESCE(ra.disliked,0) as rating from post p inner join users u on p.author = u.id left join reply r on p.id = r.postid left join rating ra on p.id = ra.id where p.catid = '1' group by p.id;
	
select count(id) from post where catid = '1';
select count(r.postid) as comment from post p inner join reply r on p.id = r.postid where p.id = 4;
select * from rating;
insert into reply (content, date, author,postid) values ('adf','2016/2/3', 'lala',4);
insert into reply (content, date, author,postid) values ('lala','2016/2/3', 'ok','3');
insert into reply (content, date, author,postid) values ('lala','2016/2/3', 'ok',1);

select * from reply;

select r.id, r.content, r.date, r.author, p.id, p.topic, p.content, p.date, p.author, p.catid from post p left join reply r on p.id = r.postid;


select p.topic, p.content, u.username, p.date, r.content, r.date, r.author,COALESCE(ra.liked,0) as liked, COALESCE(ra.disliked,0) as disliked, COALESCE(ra.liked,0) + COALESCE(ra.disliked,0) as rating 
from post p inner join users u on p.author = u.id left join reply r on p.id = r.postid left join rating ra on p.id = ra.id where p.id = 3;

insert into post (content, topic, date, author, subcatid) values ('123', 'ok', now(), 1,1);

insert into categories (name, description) values ('food', 'Food Topics');
insert into categories (name, description) values ('program', 'Program Topics');
insert into categories (name, description) values ('media', 'Media Topics');
insert into categories (name, description) values ('sport', 'Sport Topics');
insert into categories (name, description) values ('help', 'Ask For Help');
insert into categories (name, description) values ('activity', 'Activity Topics');
insert into categories (name, description) values ('book', 'Book Topics');
insert into categories (name, description) values ('funny', 'Funny Spots');
insert into categories (name, description) values ('classified', 'Classified Topics');

select c.description, s.name, s.catid from categories c inner join subcategories s on c.id = s.catid where c.name = 'food';

select * from post;
insert into post (topic, content, date, author, subcatid) values ('123', '12', now(), 1,2);

select p.date, count(p.id) as total from post p inner join users u on p.author = u.id left join reply r on p.id = r.postid left join rating ra on p.id = ra.id where p.catid = '1' group by p.id;

select * from subcategories;
select COUNT(id) as TOTAL from post where subcatid = 1;

SELECT s.name, s.description, count(p.subcatid) as total, max(p.date) as latest from post p right join subcategories s on p.subcatid = s.id where s.catid = 1 group by p.subcatid, s.id order by s.id; 

select count(catid) from subcategories where catid = 2;
>>>>>>> refs/remotes/origin/Kha
