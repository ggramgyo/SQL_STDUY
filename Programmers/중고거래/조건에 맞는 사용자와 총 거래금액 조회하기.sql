SELECT USER_ID, NICKNAME, TOTAL_PRICE
FROM USED_GOODS_USER, (SELECT WRITER_ID, SUM(PRICE) AS TOTAL_PRICE
    FROM USED_GOODS_BOARD
    GROUP BY WRITER_ID,STATUS
    HAVING STATUS = 'DONE'
    AND SUM(PRICE) >= 700000) B
WHERE B.WRITER_ID = USER_ID
ORDER BY TOTAL_PRICE;


# USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 완료된 중고 거래의 총금액이 70만 원 이상인 사람의 회원 ID, 닉네임, 총거래금액을 조회하는 SQL문을 작성해주세요. 
# 결과는 총거래금액을 기준으로 오름차순 정렬해주세요.

# <내가 푼 풀이> 
# 게시글 테이블에서 status가 done인 경우, 합계가 70만 이상인 경우 두가지를 만족하는 GROUP으로 묶어준다.
# 유저 TABLE과 새로운 그룹 테이블 아이디를 비교해 닉네임, 아이디, 합계 출력
