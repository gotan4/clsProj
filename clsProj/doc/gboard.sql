-- data insert

INSERT INTO
    gboard(gno, gmno, gbody)
VALUES(
    (SELECT NVL(MAX(GNO)+1, 1000) FROM gboard),
    1000, '���� �ϵ��̴�.'
);

commit;

-- ������ ��ȸ ���� ���
SELECT
    gno, gmno, id, gdate, gbody body, savename avatar
FROM
    gboard, member m, avatar a
WHERE
    gmno = mno
    AND m.ano = a.ano
;


