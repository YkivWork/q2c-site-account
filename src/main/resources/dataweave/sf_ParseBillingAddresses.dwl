%dw 1.0
%output application/java
---
payload map ((address, index) ->

{
	lastModifiedDate: address.LastModifiedDate,
	companyName: address.Company_Name__c,
	//emailAddress: address.Email_Address__c,
	type: address.type,
	billingAddressId: address.Billing_Address_ID__c,	
	county: address.County__c,
	locality: address.Locality__c,
	name: address.Name,
	address1: address.Address_1__c,
	city: address.City__c,
	//contactInformation: address.Contact_Information__c,
	createdById: address.CreatedById,
	address3: address.Address_3__c,
	//middleInitial: address.Middle_Initial__c,
	operatingUnit: address.Operating_Unit_Name__c,
	billingCompany: address.Billing_Company__c,
	country: address.Country__c,
	postalCode: address.Postal_Code__c,
	address2: address.Address_2__c,
	stateProvince: address.State_Province__c,
	//phone: address.Phone__c,
	//firstName: address.First_Name__c,
	sfdcId: address.Id,
	physicalAddress: address.Physical_Address__c,
	operatingUnitId: address.Operating_Unit_ID__c
	//lastname: address.Last_Name__c
	
	 
  
})