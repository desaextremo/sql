CREATE TABLE users
( user_id      		NUMBER NOT NULL,
  user_first_name   VARCHAR2(50) NOT NULL,
  user_last_name    VARCHAR2(50) NOT NULL,
  user_birthday		DATE NOT NULL,
  user_address 		VARCHAR2(50) NOT NULL,
  user_cellPhone	VARCHAR2(10) NOT NULL,
  user_email		VARCHAR2(10) NOT NULL,
  user_password		VARCHAR2(50) NOT NULL,
  user_role			VARCHAR2(10) NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE genders
( gen_id      NUMBER NOT NULL,
  gen_name    VARCHAR2(50) NOT NULL,
  PRIMARY KEY (gen_id)
);
	
CREATE TABLE authors
( aut_id      		NUMBER NOT NULL,
  aut_first_name    VARCHAR2(50) NOT NULL,
  aut_last_name     VARCHAR2(50) NOT NULL,
  aut_date_born		DATE NOT NULL,
  aut_country 		VARCHAR2(30) NOT NULL,
  aut_about			VARCHAR2(255) NOT NULL,
  PRIMARY KEY (aut_id)    
);

CREATE TABLE books
( book_id      		NUMBER NOT NULL,
  book_isbn    		VARCHAR2(20) NOT NULL,
  book_title    	VARCHAR2(50) NOT NULL,
  book_aut_id      	NUMBER NOT NULL,
  book_gen_id       NUMBER NOT NULL,
  book_pages		NUMBER NOT NULL,
  book_price		NUMBER NOT NULL,
  book_year			NUMBER NOT NULL,
  book_selec		NUMBER NOT NULL,
  book_desc			VARCHAR2(2500) NOT NULL,		
  PRIMARY KEY (book_id)    
);

ALTER TABLE books
ADD ( CONSTRAINT book_autor_fk
      FOREIGN KEY (book_aut_id)
      REFERENCES authors(aut_id)
) ;	

ALTER TABLE books
ADD ( CONSTRAINT book_gender_fk
      FOREIGN KEY (book_gen_id)
      REFERENCES genders(gen_id)
);

CREATE TABLE surveys
( survey_id          NUMBER NOT NULL,
  survey_book_id        NUMBER NOT NULL,
  survey_user_id        NUMBER NOT NULL,
  survey_vote         VARCHAR2(5) NOT NULL,
  aut_resume       VARCHAR2(255) NOT NULL,
  PRIMARY KEY (survey_id)    
);


	