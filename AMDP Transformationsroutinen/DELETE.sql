-- ABAP
-- DELETE source_package WHERE material = '100000144'.
outtab = SELECT * FROM :intab WHERE NOT material = '100000144';
