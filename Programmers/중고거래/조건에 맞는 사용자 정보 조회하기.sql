SELECT USER_ID, NICKNAME, concat(CITY, ' ', STREET_ADDRESS1, ' ', STREET_ADDRESS2) AS '전체주소',
       CONCAT(LEFT(TLNO, 3), '-', MID(TLNO, 4, 4), '-', SUBSTR(TLNO,8)) AS '전화번호'
FROM USED_GOODS_USER
WHERE USER_ID IN (SELECT WRITER_ID FROM USED_GOODS_BOARD GROUP BY WRITER_ID HAVING COUNT(WRITER_ID) >=3)
ORDER BY USER_ID DESC;


# USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 중고 거래 게시물을 3건 이상 등록한 사용자의 사용자 ID, 닉네임, 전체주소, 전화번호를 조회하는 SQL문을 작성해주세요. 
# 이때, 전체 주소는 시, 도로명 주소, 상세 주소가 함께 출력되도록 해주시고, 전화번호의 경우 xxx-xxxx-xxxx 같은 형태로 하이픈 문자열(-)을 삽입하여 출력해주세요. 
# 결과는 회원 ID를 기준으로 내림차순 정렬해주세요.


# <참고해서 푼 풀이>
# 게시글 작성 횟수 3 이상인 사람들을 뽑을 때 먼저 WHERE 절에서 서브 쿼리를 이용해 게시글 테이블에서 작성자를 GROUP BY로 묶어 HAVING COUNT을 사용해
# 3 이상인 사람들로만 따로 그룹화 시켜준다. 거기서 IN을 이용해 USER_ID가 그룹 내 포함되는지 여부를 판단해준다.
# SELECT 절 CONCAT 이용해 문자열을 합쳐줬고 LEFT, MID, SUBSTR 이용해 전화 번호 사이사이에 '-' 기호를 추가해줬다.
# 내림차순 DESC



