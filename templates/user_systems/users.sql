CREATE TABLE users (
  id INT(30) NOT NULL AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(50) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

INSERT INTO users(id, username, password, email) VALUES (1, 'tme0221', 'tmepassword', 'tme0221@westminstercollege.edu');
INSERT INTO users(id, username, password, email) VALUES (2, 'cbm0908', 'cbmpassword', 'cbm0908@westminstercollege.edu');
INSERT INTO users(id, username, password, email) VALUES (3, 'bef0926', 'befpassword', 'bef0926@westminstercollege.edu');
INSERT INTO users(id, username, password, email) VALUES (4, 'lag0917', 'lagpassword', 'lag0917@westminstercollege.edu');
