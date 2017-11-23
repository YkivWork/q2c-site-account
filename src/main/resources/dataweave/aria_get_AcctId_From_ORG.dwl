%dw 1.0
%output application/java
---
(payload filter (($.IdentifierTypeKey == "Aria_Acct") and ($.EndDate == null)) map {
    id_val : $.IdentifierValue
    }).*id_val
    