-- ABAP
-- LOOP AT result_package ASSIGNING <result_fields>.
--  IF <result_fields>-/bic/amount GE 50.
--    <result_fields>-/bic/category = 'Cat 1'.
--  ELSE <result_fields>-/bic/category = 'Cat 2'.
--  ENDIF.
-- ENDLOOP.

-- SQLScript
outtab = SELECT "/bic/auftrnr",
                "/bic/auftr_jahr",
                "/bic/amount",
                
                CASE
                  WHEN "/bic/amount" > 50 THEN 'Cat 1'
                  ELSE 'Cat 2'
                  END AS "/bic/category",
                              
                RECORD
                SQL__PROCEDURE__SOURCE__RECORD
         FROM :intab
