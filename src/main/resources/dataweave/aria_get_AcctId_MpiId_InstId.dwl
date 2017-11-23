%dw 1.0
%output application/java
---
flatten payload filter ($.IdentifierTypeKey == "Aria_MPI" and (flowVars.orgVal contains $.Qualifier1Value)) map {
    id_val : $.IdentifierValue,
    instance_id:$.EntityInstance_ID,
    ql_val : $.Qualifier1Value         
}