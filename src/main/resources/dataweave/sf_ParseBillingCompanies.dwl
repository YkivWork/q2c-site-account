%dw 1.0
%output application/java
---
payload map ((company, index) ->

{
	account: company.Account__c,
	billingCompanyId: company.Billing_Company_ID__c,
	billingCompanyName: company.Billing_Company_Name__c,
	name: company.Name
  
})