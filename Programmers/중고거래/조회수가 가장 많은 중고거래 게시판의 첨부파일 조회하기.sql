SELECT concat("/home/grep/src/", A.BOARD_ID, '/', B.FILE_ID,B.FILE_NAME, B.FILE_EXT) AS FILE_PATH
FROM (
    SELECT *
    FROM USED_GOODS_BOARD
    ORDER BY VIEWS DESC
    LIMIT 1
    ) AS A
JOIN USED_GOODS_FILE AS B ON A.BOARD_ID = B.BOARD_ID
ORDER BY A.VIEWS DESC, B.FILE_ID DESC;

# USED_GOODS_BOARD와 USED_GOODS_FILE 테이블에서 조회수가 가장 높은 중고거래 게시물에 대한 첨부파일 경로를 조회하는 SQL문을 작성해주세요.
# 첨부파일 경로는 FILE ID를 기준으로 내림차순 정렬해주세요.
# 기본적인 파일경로는 /home/grep/src/ 이며, 게시글 ID를 기준으로 디렉토리가 구분되고, 파일이름은 파일 ID, 파일 이름, 파일 확장자로 구성되도록 출력해주세요.
# 조회수가 가장 높은 게시물은 하나만 존재합니다.

# <내가 푼 풀이>
# 가장 조회수가 높은 게시물 하나를 뽑아주기 위해서 재귀 쿼리를 사용해주었다. (FROM절)
# SELCET 에서 문제에서 원하는 정보를 적어준다. oracle에서는 || 을 이용해서 합쳐주었지만 mysql은 불가능 concat('a','b') -> ab 이용해서 해결
# JOIN ON 을 통해 FILE 테이블과 게시글 테이블을 BOARD_ID 이용해 연결
