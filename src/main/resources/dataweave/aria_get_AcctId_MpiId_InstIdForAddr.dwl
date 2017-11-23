%dw 1.0
%output application/java
---
payload filter ($.IdentifierTypeKey == "Aria_MPI" and ($.EndDate == null)) map {
    id_val : $.IdentifierValue,
    instance_id:$.EntityInstance_ID,
    ql_val : $.Qualifier1Value         
}