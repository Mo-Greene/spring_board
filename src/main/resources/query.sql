/* 더미데이터 */
insert into board (title, content, writer, regDate, password, cno)
    (select title, content, writer, regDate, password, 1 from board);

/* 게시글 전체 조회 */
SELECT bno, c.category, title, writer, view, regDate as regDate, modDate as modDate
FROM board
    JOIN category c on c.cno = board.cno
ORDER BY bno DESC
    LIMIT 0, 5;


/* 특정게시글 조회 */
SELECT bno, category.category, title, writer, view, regDate, modDate
FROM board JOIN category ON board.cno = category.cno
WHERE bno = 124;

/* 게시글 삭제 */
DELETE FROM board
WHERE bno = 72;