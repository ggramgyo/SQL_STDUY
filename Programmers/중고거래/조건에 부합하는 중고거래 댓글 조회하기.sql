
SELECT A.TITLE, B.BOARD_ID, B.REPLY_ID, B.WRITER_ID, B.CONTENTS, DATE_FORMAT(B.CREATED_DATE, '%Y-%m-%d') as CREATED_DATE
FROM USED_GOODS_BOARD AS A
JOIN USED_GOODS_REPLY AS B ON B.BOARD_ID = A.BOARD_ID
WHERE A.CREATED_DATE LIKE '2022-10-__'
ORDER BY B.CREATED_DATE, A.TITLE;


# USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일을 조회하는 SQL문을 작성해주세요.
# 결과는 댓글 작성일을 기준으로 오름차순 정렬해주시고, 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬해주세요.

# <내가 푼 풀이>
# 게시글 테이블 A와 댓글 테이블 B를 게시글 ID로 Join 시켜준다.
# SELCET 에서 문제에서 원하는 정보를 적어준다. DATE는 예시에 나온 FORMAT 사용해 맞춰준다. 댓글 작성일 기준이기에 B CREATEED_DATE
# ORDER BY 의 기본값이 오름차순이다. 내림차순 일 땐 DESC 뒤에 붙혀줘야된다.
# 2022년 10월에 작성된 게시글을 원하기 떄문에 WHERE 에서 게시글 작성날짜 A CREATED_DATE 문자 일치 LIKE % 또는 _ 사용
# 이외에도 BETWEEN .. AND .., 산술연자 사용가능하다.

# <다른 풀이>
