/* table band créée */
CREATE TABLE band (
    bandName VARCHAR(50) PRIMARY KEY,
    creation YEAR,
    genre VARCHAR(50)
);

INSERT INTO band (bandName, creation, genre)
VALUES ('Crazy Duo', 2015, 'rock'),
       ('Luna', 2009, 'classical'),
       ('Mysterio', 2019, 'pop');

/* table singer qui devient musician */
RENAME TABLE singer TO musician;

ALTER TABLE musician
CHANGE COLUMN singerName musicianName VARCHAR(50);


ALTER TABLE musician
ADD (
    role VARCHAR(50),
    bandName VARCHAR(50)
);

UPDATE musician
SET role = CASE
                WHEN musicianName = 'Alina' THEN 'vocals'
                WHEN musicianName = 'Mysterio' THEN 'guitar'
                WHEN musicianName = 'Rainbow' THEN 'percussion'
                WHEN musicianName = 'Luna' THEN 'piano'
            END,
    bandName = CASE
                WHEN musicianName = 'Alina' THEN 'Crazy Duo'
                WHEN musicianName = 'Mysterio' THEN 'Mysterio'
                WHEN musicianName = 'Rainbow' THEN 'Crazy Duo'
                WHEN musicianName = 'Luna' THEN 'Luna'
            END;

/* table label ne change pas */

/* table album ne change pas */

/* singerName -> singer.singerName qui devient singerName -> musician.musicianName */

/* labelName -> label.labelName ne change pas */