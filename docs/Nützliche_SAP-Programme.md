# Nützliche ABAP-Programme
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

### SAP BW - Manueller Start einer Prozesskette
```abap
PARAMETERS: p_chain TYPE RSPC_CHAIN.

CALL FUNCTION 'RSPC_API_CHAIN_START'
  EXPORTING
	i_chain		= p_chain
*     I_T_VARIABLES       =
*     I_SYNCHRONOUS       =
*     I_SIMULATE          =
*     I_NOPLAN            =
*   IMPORTING
*     E_LOGID             =
*   EXCEPTIONS
*     FAILED              = 1
*     OTHERS              = 2
	
IF sy-subrc <> 0.
* MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*         WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
ENDIF.
```
