UPDATE Salary 
SET sex = CASE 
    WHEN sex = 'f' THEN 'm' 
    ELSE 'f' 
END;





UPDATE Salary 
    SET sex = CASE WHEN sex = 'f' THEN 'm' 
    WHEN sex = 'm' THEN 'f' END;
