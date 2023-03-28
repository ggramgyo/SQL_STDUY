SELECT BOARD_ID, WRITER_ID, TITLE, PRICE,
CASE 
    WHEN (STATUS = 'SALE') THEN '판매중' 
    WHEN (STATUS = 'DONE') THEN '거래완료' 
    ELSE '예약중'
END AS STATUS
FROM USED_GOODS_BOARD
WHERE CREATED_DATE = '2022-10-5'
ORDER BY BOARD_ID DESC;


# USED_GOODS_BOARD 테이블에서 2022년 10월 5일에 등록된 중고거래 게시물의 게시글 ID, 작성자 ID, 게시글 제목, 가격, 거래상태를 조회하는 SQL문을 작성해주세요.
# 거래상태가 SALE 이면 판매중, RESERVED이면 예약중, DONE이면 거래완료 분류하여 출력해주시고, 결과는 게시글 ID를 기준으로 내림차순 정렬해주세요.

# <내가 푼 풀이>
# SELCET 에서 문제에서 원하는 정보를 적어준다.
# SALE : 판매중, RESERVED : 예약중, DONE : 거래완료 분류하여 출력해주기 위해 CASE - END 이용
# WHEN (조건) THEN (결과)
# ORDER BY 의 기본값이 오름차순이다. 내림차순 일 땐 DESC 뒤에 붙혀줘야된다.
# 2022년 10월 5일에 작성된 게시글을 원하기 떄문데 WHERE 절 
