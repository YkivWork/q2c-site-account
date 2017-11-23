%dw 1.0
%output application/java
---
(flatten payload filter ($.IdentifierTypeKey == "Aria_MPI" and (flowVars.orgVal contains $.Qualifier1Value)) map {
    ql_val : $.Qualifier1Value      //and (flowVars.orgVal contains $.IdentifierValue)   
}).*ql_val