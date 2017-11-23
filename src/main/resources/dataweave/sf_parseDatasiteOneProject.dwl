%dw 1.0
%output application/java
---
payload map ((relation, index) ->

{
	billingAddressId: relation.Billing_Address__c,
	billingCompanyId: relation.Billing_Company__c,
	Last_name: relation.Last_Name__c,
	First_name: relation.First_Name__c,
	Middle_name: relation.Middle_Initial__c,
	Phone: relation.Phone__c,
	Email: relation.Email_Address__c,
	projectId: relation.DatasiteOne_Project__c
})