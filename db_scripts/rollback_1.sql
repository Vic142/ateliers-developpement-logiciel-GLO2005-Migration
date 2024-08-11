/* table band créée */
DROP TABLE band;

/* table singer qui devient musician */
ALTER TABLE musician
DROP role,
DROP bandName;

ALTER TABLE musician
CHANGE COLUMN musicianName singerName VARCHAR(50);

RENAME TABLE musician TO singer;

