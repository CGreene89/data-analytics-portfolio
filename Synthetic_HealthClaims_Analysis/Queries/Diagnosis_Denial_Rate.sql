---Are there specific diagnosis codes (ICD-10) associated with higher denial rates?

SELECT
  A.Diagnosis_Code, A.Total_Claims, COALESCE(B.Denied_Claims,0) AS Denied_Claims,
  ROUND(CAST(COALESCE(B.Denied_Claims,0) AS FLOAT) / A.Total_Claims,3) AS Denial_Rate
FROM
(
  SELECT 
      Diagnosis_Code,COUNT(Claim_ID) AS Total_Claims
  FROM claims
  GROUP BY Diagnosis_Code
) A
LEFT JOIN
(
  SELECT 
      Diagnosis_Code,COUNT(Claim_ID) AS Denied_Claims
  FROM claims
  WHERE Claim_Status = 'Denied'
  GROUP BY Diagnosis_Code
) B
ON 
  A.Diagnosis_Code = B.Diagnosis_Code
ORDER BY Denial_Rate DESC
LIMIT 10;
