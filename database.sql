DROP DATABASE IF EXISTS mediaplayer;

CREATE DATABASE mediaplayer;
USE mediaplayer;

CREATE TABLE kayttaja (id INT, PRIMARY KEY (id), tunnus VARCHAR(60), salasana VARCHAR(60));
CREATE TABLE kappale(id INT, PRIMARY KEY (id), pituus VARCHAR(16), artisti VARCHAR(20), genre VARCHAR(20), nimi VARCHAR(20), linkki VARCHAR(60));
CREATE TABLE soittolista (kappaleid INT, kayttajaid INT, FOREIGN KEY (kappaleid) REFERENCES kappale(id), FOREIGN KEY (kayttajaid) REFERENCES kayttaja(id));
INSERT INTO kayttaja VALUES(1, 'Timo', 'fdeb0e5d63e617479bf5df01ece7cdb74e242b8e'); -- kayttaja tiivisteella
INSERT INTO kappale VALUES (1, '2:12','HorrorPen', 'Fantasy','Winds of Stories','http://opengameart.org/sites/default/files/Winds%20Of%20Stories_2.mp3');
INSERT INTO kappale VALUES (2, '3:43', 'p0ss', 'Sci-fi','Nebula','http://opengameart.org/sites/default/files/nebula.mp3');
INSERT INTO kappale VALUES (3, '2:07', 'Alexandr Zhelanov','Fantasy','Castlecall','http://opengameart.org/sites/default/files/Castlecall.mp3');
INSERT INTO kappale VALUES (4, '1:36', 'Sudocolon','Electronic','Hyperton','http://opengameart.org/sites/default/files/Hyperton.mp3');
INSERT INTO soittolista VALUES(1,1);
INSERT INTO soittolista VALUES(3,1);


