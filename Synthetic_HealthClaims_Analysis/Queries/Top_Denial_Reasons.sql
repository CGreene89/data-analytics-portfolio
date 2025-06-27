---What are the top 10 most common denial reason codes?

SELECT Reason_Code, COUNT(*) AS denial_count
FROM claims
WHERE Claim_Status = 'Denied'
GROUP BY Reason_Code
ORDER BY denial_count DESC
LIMIT 10
;
