SELECT DISTINCT FIRST_NAME, LAST_NAME FROM
(SELECT Z_VILLA.OWNER_ID, COUNT(RESERVATION_ID) COUNT2013, Z_USER.FIRST_NAME, Z_USER.LAST_NAME
FROM Z_RESERVATION,Z_USER,Z_VILLA
WHERE Z_RESERVATION.VILLA_ID=Z_VILLA.VILLA_ID
AND Z_VILLA.OWNER_ID=Z_USER.USER_ID
AND START_DATE BETWEEN '2013/01/01' AND '2013/08/31'
GROUP BY Z_VILLA.VILLA_ID,Z_VILLA.OWNER_ID,Z_USER.FIRST_NAME, Z_USER.LAST_NAME) A
JOIN
(SELECT Z_VILLA.OWNER_ID, COUNT(RESERVATION_ID) COUNT2014
FROM Z_RESERVATION,Z_USER,Z_VILLA
WHERE Z_RESERVATION.VILLA_ID=Z_VILLA.VILLA_ID
AND Z_VILLA.OWNER_ID=Z_USER.USER_ID
AND START_DATE BETWEEN '2014/01/01' AND '2014/08/31'
GROUP BY Z_VILLA.VILLA_ID,Z_VILLA.OWNER_ID) B
ON  A.OWNER_ID=B.OWNER_ID 
AND 1.1*A.COUNT2013<=B.COUNT2014;