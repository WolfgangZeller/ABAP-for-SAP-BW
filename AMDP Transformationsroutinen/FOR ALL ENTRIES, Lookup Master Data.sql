-- ABAP
-- SELECT /bic/purchaser
-- FROM /bic/pmasterdata
-- INTO TABLE @DATA(lt_select)
-- FOR ALL ENTRIES IN result_package
-- WHERE /bic/auftrnr = result_package-/bic/auftrnr.

-- SQLScript
outtab = SELECT t1."/bic/auftrnr",
                t1."/bic/auftr_jahr",
                t1."/bic/amount",
                t1."/bic/category",
                t2."/bic/purchaser",
                RECORD,
                SQL__PROCEDURE__SOURCE__RECORD
         FROM :intab AS t1
         LEFT JOIN "/bic/pmasterdata" AS t2
         ON t1."/bic/auftrnr" = t2."/bic/auftrnr";
         
-- LEFT OUTER JOIN und LEFT JOIN sind identisch
