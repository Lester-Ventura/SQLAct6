-- 4. Write a query that finds departments whose names contain the string “𝑠𝑐𝑖” as a
--substring, regardless of the case. (Use the 𝑙𝑜𝑤𝑒𝑟() function to get over case sensitivity.)
	SELECT DEPT_NAME
	FROM DEPARTMENT 
  WHERE lower(DEPT_NAME) LIKE ‘%sci%’;
