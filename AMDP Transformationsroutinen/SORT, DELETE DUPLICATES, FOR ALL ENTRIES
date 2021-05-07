-- ABAP
-- SORT result_package BY /bic/auftrnr /bic/auftr_jahr.
-- DELETE ADJACENT DUPLICATES FROM result_package COMPARING /bic/auftrnr /bic/auftr_jahr.

-- SQLScript
outtab = SELECT * 
         FROM (SELECT ROW NUMBER () OVER( PARTITION BY "/bic/auftrnr", "/bic/auftr_jahr"
               ORDER BY "/bic/auftrnr", "/bic/auftr_jahr" )
         AS RN1, * FROM :itab)
         WHERE RN1 = 1;
         
-- DELETE ADJACENT DUPLICATES erreicht man mit der Window Function ROW NUMBER() und OVER().
-- PARTITION BY teilt die Daten in Gruppen und ROW NUMBER() teilt jedem Member (jeder Zeile) eine Integer-Zahl zu.
-- Mit der WHERE-Bedingung am Ende wird dann nur jeweils die Nummer 1 jeder Gruppe genommen und Duplikate ignoriert.
