/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).

*/

DELIMITER //

CREATE PROCEDURE PrintPattern()
BEGIN
  DECLARE i INT DEFAULT 20;
  WHILE i > 0 DO
    SELECT REPEAT('* ', i) AS pattern;
    SET i = i - 1;
  END WHILE;
END;
//

DELIMITER ;

CALL PrintPattern();
