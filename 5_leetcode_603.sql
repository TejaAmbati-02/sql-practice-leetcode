SHOW DATABASES;

USE leetcode_practice;


CREATE TABLE Cinema (
    seat_id INT NOT NULL AUTO_INCREMENT,
    free BIT,
    PRIMARY KEY (seat_id)
);

INSERT INTO Cinema (free)
VALUES
(1),
(0),
(1),
(1),
(1);


SELECT * FROM `Cinema`;


-- 0 -> Occupied, 1 -> Free


-- Consecutive availble seats in cinema




SELECT seat_id FROM 
  (SELECT seat_id, free, LEAD(free, 1) OVER(ORDER BY seat_id) AS next_seat
FROM Cinema) Cinema_next_row
WHERE (next_seat = 1 OR next_seat IS NULL) AND free = 1;
