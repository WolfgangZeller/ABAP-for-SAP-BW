-- ABAP
-- DELETE source_package WHERE material = '100000144'.
-- DELETE source_package WHERE material IS INITIAL'.
-- DELETE source_package WHERE ( material = '100000144' AND customer = 'BTP' ) OR ( material = '100000145' AND customer = 'PURCH' ).
-- DELETE source_package WHERE material NOT IN r_range. 

-- SQLScript
outtab = SELECT * FROM :intab WHERE NOT material = '100000144';
outtab = SELECT * FROM :intab WHERE material <> '0';
outtab = SELECT * FROM :intab WHERE NOT (( material = '100000144' AND customer = 'BTP' ) OR ( material = '100000145' AND customer = 'PURCH' ));
outtab = SELECT * FROM :intab WHERE material NOT IN ( '100000144','100000145','100000146' );                                                                                 
