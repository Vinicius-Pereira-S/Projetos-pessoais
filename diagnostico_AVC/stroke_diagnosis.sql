SELECT * FROM stroke_diagnosis;

-- Retirar as casas decimais da idade --

ALTER TABLE stroke_diagnosis 
ALTER COLUMN age TYPE INTEGER USING age::INTEGER;


-- Deixas as colunas 'bmi' e 'avg_glucose' com apenas 2 casas decimais --

UPDATE stroke_diagnosis
SET bmi = ROUND(bmi::NUMERIC, 2),
	avg_glucose = ROUND(avg_glucose::NUMERIC, 2);


-- Total de pacientes por gênero e status socio econômico --

SELECT gender, ses, COUNT(*) AS total_patient
FROM stroke_diagnosis
GROUP BY gender, ses
ORDER BY gender, ses;


-- Porcentagem de pacientes que tiveram AVC em cada grupo (com e sem hipertensão) --

SELECT hypertension, COUNT(*) AS total_patient,
	   SUM(stroke) AS total_stroke,
	   ROUND(AVG(stroke::NUMERIC)*100, 2) AS perc_stroke
FROM stroke_diagnosis
GROUP BY hypertension;


-- Porcentagem de pacientes fumantes que tiveram AVC --

SELECT smoking_status, COUNT(*) AS total_smoking_patient,
	   SUM(stroke) AS total_stroke,
	   ROUND(AVG(stroke::NUMERIC) * 100, 2) AS perc_stroke
FROM stroke_diagnosis
GROUP BY smoking_status;


-- Idade média dos pacientes que tiveram AVC em comparação com aqueles que não tiveram --

SELECT stroke, COUNT (*) AS total_patient,
	   ROUND(AVG(age::NUMERIC), 2) AS mean_age
FROM stroke_diagnosis
GROUP BY stroke;


-- Qual a porcentagem de pacientes com AVC em cada grupo (com e sem diabetes)? --

SELECT diabetes, COUNT(*) AS total_diabetes,
	   SUM(stroke) AS total_stroke,
	   ROUND(AVG(stroke::NUMERIC) * 100, 2) AS perc_stroke
FROM stroke_diagnosis
GROUP BY diabetes;


-- A média, o menor e o maior IMC para cada grupo de tabagismo --

SELECT smoking_status, COUNT(*) AS total_smoking,
	   ROUND(AVG(bmi::NUMERIC), 2) AS mean_bmi,
	   MIN(bmi::NUMERIC) AS min_bmi,
	   MAX(bmi::NUMERIC) AS max_bmi
FROM stroke_diagnosis
GROUP BY smoking_status;


-- Pacientes que possuem mais de 60 anos e tem tanto hipertenão quanto diabetes --

SELECT age::TEXT, COUNT(*) AS total_patients
FROM stroke_diagnosis
WHERE age > 60 AND hypertension = 1 AND diabetes = 1
GROUP BY age

UNION ALL

SELECT 'Total', COUNT(*)
FROM stroke_diagnosis
WHERE age > 60 AND hypertension = 1 AND diabetes = 1
ORDER BY age;


-- Os níveis médios de glicose no sangue de pacientes que tiveram AVC contra os que não tiveram --

SELECT stroke,
	   ROUND(AVG(avg_glucose::NUMERIC),2) AS total_avg_glucose
FROM stroke_diagnosis
GROUP BY stroke;


-- Os cinco pacientes mais velhos que tiveram AVC --

SELECT * FROM stroke_diagnosis
WHERE stroke = 1
ORDER BY age DESC
LIMIT 5;


--  Homens ou mulheres têm maior incidência de AVC? --

SELECT gender, 
	   COUNT(*) AS total_patients,
	   SUM(stroke) AS total_stroke,
	   ROUND(AVG(stroke::NUMERIC) * 100, 2) AS percentual_com_avc
FROM stroke_diagnosis
GROUP BY gender;













