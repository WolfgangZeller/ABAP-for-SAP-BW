# Nützliche ABAP-Programme
---

[Zurück zur Startseite](https://wolfgangzeller.github.io/ABAP-for-SAP-BW/)

### SAP BW - Manueller Start einer Prozesskette
```abap
PARAMETERS: p_chain TYPE RSPC_CHAIN.

CALL FUNCTION 'RSPC_API_CHAIN_START'
	EXPORTING
		i_chain		= p_chain
		
		
		
IF sy-subrc <> 0.

ENDIF.
```
