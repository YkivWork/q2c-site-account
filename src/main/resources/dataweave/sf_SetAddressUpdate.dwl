%dw 1.0
%output application/java

%var stateToUse = payload.state default payload.province
---
[{
//customerRecord
//sfdcCompanyId

//  Id: "a3hc0000000FBxLAAW",
  Oracle_ID__c: payload.accountSiteId,
  
  Company_Name__c: flowVars.customerRecord.name, //was sessionVars.oracleCompanyName
  Address_1__c: payload.address1,
  Address_2__c: payload.address2,
  Address_3__c: payload.address3,
  City__c: payload.city,
  Country__c: payload.country,
  County__c: payload.county,
  Postal_Code__c: payload.postalCode,
  State_Province__c: stateToUse,
  Billing_Company__c: flowVars.sfdcCompanyId,
  Operating_Unit_Name__c: payload.operatingUnitName,
  (fieldsToNull: ['State_Province__c']) when (stateToUse == null)
}]