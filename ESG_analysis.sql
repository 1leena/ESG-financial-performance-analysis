Query 1 question: 
Which industries have the highest average ESG score? 

SELECT industry, AVG(ESG_overall) AS Average_ESG 
FROM company_esg_financial_dataset 
GROUP BY industry 
ORDER BY Average_ESG DESC;


Query 2 question:
whcih industries have the highest average environmental ESG score?
  
SELECT industry, AVG(ESG_environmental) AS Average_Environmental_ESG
FROM company_esg_financial_dataset 
GROUP BY industry 
ORDER BY Average_Environmental_ESG DESC;


Query 3 question:
is there a relationship between a company ESG performance and its profit margin 

SELECT CORR(Average_ESG, Average_ProfitMargin) AS ESG_Profit_correlation 
 FROM (
      SELECT 
      CompanyName, 
      AVG(ESG_overall) AS Average_ESG, 
      AVG(ProfitMargin) AS Average_ProfitMargin 
      FROM company_esg_financial_dataset 
      GROUP BY CompanyName
) AS Company_averages;


Query 4 question:
which industries has the highest average carbon emissions?

SELECT industry, AVG(CarbonEmissions) AS Average_CarbonEmissions
FROM company_esg_financial_dataset
GROUP BY industry 
ORDER BY Average_CarbonEmissions DESC;


Query 5 question:
Does company size appear related to ESG performance 

SELECT CompanyName, 
       AVG(ESG_overall) AS Average_ESG,
       AVG(Revenue) AS Average_Revenue 
FROM company_esg_financial_dataset 
GROUP BY CompanyName
ORDER BY Average_Revenue DESC;




