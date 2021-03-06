SELECT  T.FIRST_NAME, T.LAST_NAME FROM 
(SELECT  Z_USER.FIRST_NAME FIRST_NAME, Z_USER.LAST_NAME LAST_NAME, SUM(Z_RESERVATION.DEPOSIT)
FROM Z_USER,Z_RESERVATION
WHERE Z_USER.USER_ID=Z_RESERVATION.USER_ID
AND EXTRACT(YEAR FROM Z_RESERVATION.START_DATE)=2013
GROUP BY Z_RESERVATION.USER_ID, Z_USER.FIRST_NAME, Z_USER.LAST_NAME
ORDER BY SUM(Z_RESERVATION.DEPOSIT) DESC) T
WHERE ROWNUM<=3;