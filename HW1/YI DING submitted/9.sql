SELECT T1.id1, (T1.COUNT1-CASE WHEN T2.count2 IS NULL THEN 0 ELSE T2.COUNT2 END) /T1.count1 RATIO FROM
(SELECT Z_VILLA.OWNER_ID id1, COUNT(*) count1 
FROM Z_VILLA
GROUP BY Z_VILLA.OWNER_ID) T1
LEFT JOIN
(SELECT Z_VILLA.OWNER_ID id2,COUNT(*) count2
FROM Z_VILLA, Z_RESERVATION
WHERE Z_VILLA.VILLA_ID=Z_RESERVATION.VILLA_ID
AND '2014/08/15'  BETWEEN Z_RESERVATION.START_DATE AND Z_RESERVATION.END_DATE
GROUP BY Z_VILLA.OWNER_ID)  T2
ON T1.id1=T2.id2;
