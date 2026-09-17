Query 1 question: 
Which industries have the highest average ESG score? 

SELECT industry, AVG(ESG_overall) AS Average_ESG 
FROM company_esg_financial_dataset 
GROUP BY industry 
ORDER BY Average_ESG DESC;

