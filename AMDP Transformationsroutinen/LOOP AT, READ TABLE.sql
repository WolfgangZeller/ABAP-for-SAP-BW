-- ABAP
-- LOOP AT result_package ASSIGNING <result_fields>.
--  READ TABLE lt_tab INTO DATA(wa_tab) WITH KEY /bic/material = <result_fields>-/bic/material BINARY SEARCH.
--    IF sy-subrc = 0.
--      <result_fields>-/bic/category = wa_tab-/bic/category.
--    ENDIF.
-- ENDLOOP.

-- SQLScript
outtab = SELECT "/bic/auftrnr",
                "/bic/auftr_jahr",
                "/bic/amount",
                "/bic/category",
                "/bic/purchaser",
                "/bic/material",
                RECORD,
                SQL__PROCEDURE__SOURCE__RECORD
         FROM (SELECT t1."/bic/auftrnr",
                      t1."/bic/auftr_jahr",
                      t1."/bic/amount",
                      t2."/bic/category",
                      t1."/bic/purchaser",
                      RECORD,
                      SQL__PROCEDURE__SOURCE__RECORD
               FROM :intab AS t1
               LEFT JOIN "/bic/adsocat2" AS t2
               ON t1."/bic/material" = t2."/bic/material";
               

-- Single Record Processing wird in SQLScript statt mit Schleifenverarbeitung mit Subqueries ermöglicht
