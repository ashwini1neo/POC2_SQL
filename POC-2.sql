
********************"create Dattabase"*******************
--------------------------------------------------------
CREATE DATABASE social_Post_check;

SHOW TABLES;

********************"CREATE Tables"*******************
--------------------------------------------------------

CREATE TABLE author ( id INT PRIMARY KEY, `name` VARCHAR(100) );

CREATE TABLE USER ( id INT PRIMARY KEY, `name` VARCHAR(100) ) ;

CREATE TABLE `comment` ( id INT PRIMARY KEY NOT NULL, content VARCHAR(1000), postid INT ,createdts DATETIME ,userid INT ,  FOREIGN KEY(userid) REFERENCES  `user`(id) ,FOREIGN KEY(postid) REFERENCES post(id) );

CREATE TABLE post( id INT PRIMARY KEY NOT NULL, NAME VARCHAR(100), authorid INT , createdts DATETIME ,FOREIGN KEY (authorid)REFERENCES  author(id)) ;


********************"Dummy Data User Tables"*******************
--------------------------------------------------------
DESC `user`;
INSERT INTO `user` VALUES(1,'Gilcrist');
INSERT INTO `user` VALUES(2,'Sachin');
INSERT INTO `user` VALUES(3,'Devilers');

SELECT * FROM `user`;

********************"Dummy Data Auther Tables"*******************
--------------------------------------------------------
DESC `author`;
INSERT INTO author VALUES(1,'James Amnderson');
INSERT INTO author VALUES(2,'Umesh Yadav');


SELECT * FROM `author`;



********************"Dummy Data Post Tables"*******************
--------------------------------------------------------

DESC post;

INSERT INTO post VALUES(1,'Indian batting Order collepsed',1,2021-09-04 13:05:18);
INSERT INTO post VALUES(2,'India will come back',2,'2021-09-04 13:08:18');
INSERT INTO post VALUES(3,'kohli have to play a good inning',1,'2021-09-04 13:10:18');
INSERT INTO post VALUES(4,'India have to play with one Extra batsman',1,'2021-09-04 13:12:34');
INSERT INTO post VALUES(5,'Team looks fine and balanced',2,'2021-09-04 13:18:15');
INSERT INTO post VALUES(6,'England are faviorate now',1,'2021-09-04 13:31:25');
INSERT INTO post VALUES(7,'Bumrah me will take over on england',2,'2021-09-04 13:35:08');

SELECT * FROM post;

********************"Dummy Data Comment Tables"*******************
--------------------------------------------------------

DESC `comment`;

INSERT INTO COMMENT VALUES(1,'You Are Right',1,'2021-09-04 14:08:47',1);
INSERT INTO COMMENT VALUES(2,'Yadav is furios',2,'2021-09-04 14:08:51',2);
INSERT INTO COMMENT VALUES(3,'grate compitition',1,'2021-09-04 14:09:25',3);
INSERT INTO COMMENT VALUES(4,'will going to win',1,'2021-09-04 14:11:28',1);

INSERT INTO COMMENT VALUES(5,'You Are Right',1,'2021-09-04 14:08:25',1);
INSERT INTO COMMENT VALUES(6,'Yadav is furios',2,'2021-09-04 14:011:51',2);
INSERT INTO COMMENT VALUES(7,'grate compitition',1,'2021-09-04 14:07:25',3);
INSERT INTO COMMENT VALUES(8,'will going to win',1,'2021-09-04 14:18:28',1);

INSERT INTO COMMENT VALUES(9,'You Are Right',1,'2021-09-04 14:08:31',1);
INSERT INTO COMMENT VALUES(10,'Yadav is furios',2,'2021-09-04 14:08:17',2);
INSERT INTO COMMENT VALUES(13,'grate compitition',1,'2021-09-04 14:09:55',3);
INSERT INTO COMMENT VALUES(44,'will going to win',1,'2021-09-04 14:11:42',1);

INSERT INTO COMMENT VALUES(21,'You Are Right',1,'2021-09-04 14:08:47',1);
INSERT INTO COMMENT VALUES(22,'Yadav is furios',2,'2021-09-04 14:48:51',2);
INSERT INTO COMMENT VALUES(23,'grate compitition',1,'2021-09-04 14:59:25',3);
INSERT INTO COMMENT VALUES(24,'will going to win',1,'2021-09-04 14:11:58',1);

INSERT INTO COMMENT VALUES(31,'You Are Right',1,'2021-09-04 14:48:27',1);
INSERT INTO COMMENT VALUES(32,'Yadav is furios',2,'2021-09-04 14:08:51',2);
INSERT INTO COMMENT VALUES(33,'grate compitition',1,'2021-09-04 15:09:25',3);
INSERT INTO COMMENT VALUES(34,'will going to win',1,'2021-09-04 14:31:58',1);

INSERT INTO COMMENT VALUES(41,'You Are Right',1,'2021-09-04 14:58:46',1);
INSERT INTO COMMENT VALUES(42,'Yadav is furios',2,'2021-09-04 14:08:51',2);
INSERT INTO COMMENT VALUES(43,'grate compitition',1,'2021-09-04 14:04:25',3);
INSERT INTO COMMENT VALUES(44,'will going to win',1,'2021-09-04 14:01:28',1);

INSERT INTO COMMENT VALUES(51,'You Are Right',1,'2021-09-04 14:38:47',1);
INSERT INTO COMMENT VALUES(52,'Yadav is furios',2,'2021-09-04 14:15:51',2);
INSERT INTO COMMENT VALUES(53,'grate compitition',1,'2021-09-04 14:35:25',3);
INSERT INTO COMMENT VALUES(54,'will going to win',1,'2021-09-04 16:11:28',1);

INSERT INTO COMMENT VALUES(61,'You Are Right',1,'2021-09-04 14:08:47',1);
INSERT INTO COMMENT VALUES(62,'Yadav is furios',2,'2021-09-04 14:08:38',2);
INSERT INTO COMMENT VALUES(63,'grate compitition',1,'2021-09-04 14:09:25',3);
INSERT INTO COMMENT VALUES(64,'will going to win',1,'2021-09-04 14:33:28',1);

SELECT * FROM `comment`;
SELECT id,createdts FROM `comment`;
******************************'Query'*************************
--------------------------------------------------------------------------------


SELECT a.name,p.name AS post,c.content,c.`createdts`,c.`id` AS cid
FROM author a
INNER JOIN post p ON a.id = p.authorid
INNER JOIN `comment` c ON c.postid=p.authorid 
WHERE a.name = 'James Amnderson' ORDER BY c.`createdts` DESC LIMIT 10;



