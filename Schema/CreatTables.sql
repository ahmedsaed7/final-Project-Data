CREATE TABLE state (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    region VARCHAR(255)
);

CREATE TABLE congress_person (
    id INT PRIMARY KEY,
    state_id INT,
    name VARCHAR(255),
    district VARCHAR(255),
    start_date DATE,
    party VARCHAR(255)
);

CREATE TABLE bill (
   id INT PRIMARY KEY,
   bill_name VARCHAR(255),
   vote_date DATE,
   sponser_id INT,
   passed INT,
 FOREIGN KEY (sponser_id) REFERENCES  congress_person(id)
);
