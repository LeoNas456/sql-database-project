
--reikia israsyti pagal Vieno trenrio pavarde pvz: Kazlauskas, reikia israsyti nuo daugiausiai iki maziasiai kiek kartu pas ji narys yra atejes

SELECT NARYS.NARIO_ID,NARYS.VARDAS, NARYS.PAVARDE, COUNT(*) AS BUVO
FROM ATEJO, TRENIRUOTE, TRENERIS, NARYS
WHERE Atejo.treniruotes_id = Treniruote.treniruotes_id
  AND Treniruote.trenerio_id = Treneris.trenerio_id
  AND Atejo.nario_id = NARYS.nario_id
  AND Treneris.trenerio_pavarde = 'Kazlauskas'
GROUP BY NARYS.VARDAS, NARYS.PAVARDE, NARYS.NARIO_ID
ORDER BY BUVO DESC, NARYS.PAVARDE, NARYS.VARDAS

