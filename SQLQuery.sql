use sqlpractice

/* Display list of tables available in current db*/

SELECT * FROM INFORMATION_SCHEMA.TABLES

/*Display info about EMP Table*/

SP_HELP EMP

/*Display all recors from the EMP Table*/

SELECT * FROM EMP

/*Display Empno,Name and Basic From EMP table*/

/*Example for project operation*/

SELECT EMPNO,NAM,BASIC
FROM EMP

/*Example for project operator*/
/*Example of RESTRICT Oerator*/

SELECT * FROM EMP WHERE EMPNO=1

SELECT * FROM EMP WHERE EMPNO>10

SELECT * FROM EMP WHERE DEPT='DOTNET'

SELECT * FROM EMP WHERE DEPT='JAVA'

SELECT * FROM EMP WHERE NAM='ASHIMA'

/*Beetween...And : used to Display Records from given range*/

SELECT *FROM EMP
WHERE BASIC BETWEEN 30000 AND 50000

SELECT * FROM EMP
WHERE BASIC NOT BETWEEN 30000 AND 50000

/*IN : This Clause used to display recors for multiple values of particular sttribute*/

SELECT * FROM EMP
WHERE DEPT IN('JAVA','SQL')

SELECT * FROM EMP
WHERE DEPT NOT IN('JAVA','SQL')

SELECT * FROM EMP
WHERE NAM IN('KIRAN','SATISH','ASHIMA')

SELECT * FROM EMP
WHERE EMPNO IN(1,16,543,802)

/*Like: This operator allow you to display records with respect to  wild cards*/
/*Display all records whose name starts with 'a'*/

SELECT * FROM EMP
WHERE NAM LIKE 'A%'

/*Display all records whose name starts with 'H'*/

SELECT * FROM EMP
WHERE NAM LIKE '%H'

/*Display all records whose name starts with 'a' and ends with h*/

SELECT * FROM EMP
WHERE NAM LIKE 'A%H'

/*Order By : Used to display data on specific fields in ascending or descending order*/

SELECT * FROM EMP
ORDER BY DEPT

SELECT * FROM EMP
ORDER BY BASIC DESC

SELECT * FROM EMP
ORDER BY DEPT,NAM

SELECT * FROM EMP
ORDER BY DEPT,NAM DESC