---Which insurance types have the most denied claims that require follow-up?---

SELECT "Insurance_Type", COUNT(Claim_ID) AS Denial_Count
FROM claims
WHERE Claim_Status = 'Denied'
AND Follow_up_required = 'Yes'
GROUP BY Insurance_Type
ORDER BY Denial_Count desc
;
