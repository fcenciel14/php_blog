CREATE TABLE users (
  user_id INT(11) AUTO_INCREMENT,
  first_name VARCHAR(45),
  last_name VARCHAR(45),
  contact_number VARCHAR(45),
  address VARCHAR(45),
  avatar VARCHAR(100) DEFAULT NULL,
  account_id INT(11),
  PRIMARY KEY (user_id),
  FOREIGN KEY (account_id) REFERENCES accounts (account_id)
);

CREATE TABLE accounts (
  account_id int(11) AUTO_INCREMENT,
  username varchar(15),
  password varchar(255),
  role varchar(1) DEFAULT 'U',
  PRIMARY KEY (account_id)
);

CREATE TABLE categories (
  category_id int(11) AUTO_INCREMENT,
  category_name varchar(30),
  PRIMARY KEY (category_id)
);

CREATE TABLE posts (
  post_id int(11) AUTO_INCREMENT,
  post_title varchar(45),
  date_posted date,
  category_id int(11),
  post_content text,
  account_id int(11),
  post_img varchar(255) DEFAULT NULL,
  PRIMARY KEY (post_id),
  FOREIGN KEY (category_id) REFERENCES categories (category_id),
  FOREIGN KEY (account_id) REFERENCES accounts (account_id)
);