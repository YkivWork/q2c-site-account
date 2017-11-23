%dw 1.0
%output application/xml
%namespace lit urn:client:api:wsdl:document/literal_wrapped:vers:11.0:aria_complete_m_api
%namespace soap http://schemas.xmlsoap.org/soap/envelope/
---
{
  soap#Envelope: {
    soap#Header: {},
    soap#Body: {
      lit#update_contact_m: {
        client_no: p('aria.client_no'),
        auth_key: p('aria.auth_key'),
        acct_no: flowVars.ariaAccount,
        contact_ind: 4,
		billing_group_no: flowVars.billingGroup.billingGroupNumber,
        first_name: flowVars.billingCompanyDataForeach.First_name,
        middle_initial: flowVars.billingCompanyDataForeach.Middle_name,
        last_name: flowVars.billingCompanyDataForeach.Last_name,
        company_name: flowVars.theBillingCompany.billingCompanyName,
        address1: flowVars.theBillingAddress.address1,
        address2: flowVars.theBillingAddress.address2,
        address3: flowVars.theBillingAddress.address3,
        city: flowVars.theBillingAddress.city,
        locality: flowVars.theBillingAddress.locality,
        state_prov: flowVars.theBillingAddress.stateProvince,
        country_cd: flowVars.theBillingAddress.country,
        postal_cd: flowVars.theBillingAddress.postalCode,
        phone: flowVars.billingCompanyDataForeach.Phone,
        email: flowVars.billingCompanyDataForeach.Email
      }
    }
  }
}