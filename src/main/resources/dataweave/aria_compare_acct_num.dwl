%dw 1.0
%output application/java
---
{
	com_val: flowVars.ariaAccount when (flowVars.comVal contains flowVars.ariaAccount) otherwise 0
}