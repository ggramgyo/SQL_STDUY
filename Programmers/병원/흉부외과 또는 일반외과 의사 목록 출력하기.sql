SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD,'%Y-%m-%d') as HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD IN ('CS', 'GS')
ORDER BY HIRE_YMD DESC, DR_NAME
;

# <풀이>
# where in 쓸 때 뒤 조건들은 () 감쌈.
# date_format(컬럼,형식)
