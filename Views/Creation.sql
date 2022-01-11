-- VIEW CREATION -- 
CREATE [OR REPLACE] [FORCE|NOFORCE] VIEW (NAME) AS (QUERY) [WITH CHECK OPTION [CONSTRAINT (CONSTRAINT NAME)]] [WITH READ ONLY]

-- Remove a VIEW --
DROP VIEW UNO;

-- Select the VIEW --
SELECT * FROM UNO;

-------------------
-- VIEW EXAMPLES --
-------------------

-- VIEW that show all employees with from department 10 and with a salary higuer than 1200 --
CREATE VIEW UNO AS SELECT * FROM EMPLE WHERE DEPT_NO=10 AND SALARIO>1200;

-- VIEW with each department, averrage salary and higuest salary --
CREATE VIEW TRES (num_dep, nom_dep, media_salario, maximo_salario) AS 
SELECT DEPART.dept_no, DEPART.dnombre, avg(salario), max(salario) FROM 
DEPART, EMPLE WHERE DEPART.dept_no=EMPLE.dept_no GROUP BY DEPART.dept_no, DEPART.dnombre;

-- VIEW that show each concierge from each school centre --
CREATE VIEW CUATRO (CENTRO, CONSERJE) AS SELECT NOMBRE, APELLIDOS
FROM CENTROS, PERSONAL WHERE FUNCION = 'CONSERJE'
AND CENTROS.COD_CENTRO = PERSONAL.COD_CENTRO;

