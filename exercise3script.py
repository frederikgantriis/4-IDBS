SQLQUERY = """
SELECT 'Projects: %s --> %s' AS FD,
CASE WHEN COUNT(*)=0 THEN 'MAY HOLD'
ELSE 'does not hold' END AS VALIDITY
FROM ( 
	SELECT P.%s
	FROM Projects p
	GROUP BY P.%s
	HAVING COUNT(DISTINCT P.%s) > 1
) X;
"""

def PrintSQL(Att1, Att2):
    print(SQLQUERY % (Att1, Att2, Att1, Att1, Att2))

R = ['ID','PID','SID','SN','PN','MID','MN']
for i in R:
    for j in R:
        if i == j:
            continue
        PrintSQL(i, j)