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
        acct_no: flowVars.ariaValues.ariaAcct,
        contact_ind: 4,

        first_name: flowVars.billingAddresses.firstName,
        middle_initial: flowVars.billingAddresses.middleInitial,
        last_name: flowVars.billingAddresses.lastname,
        company_name: flowVars.billingAddresses.name,
        address1: flowVars.billingAddresses.address1,
        address2: flowVars.billingAddresses.address2,
        address3: flowVars.billingAddresses.address3,
        city: flowVars.billingAddresses.city,
        locality: flowVars.billingAddresses.locality,
        state_prov: flowVars.billingAddresses.stateProvince,
        country_cd: flowVars.billingAddresses.country,
        postal_cd: flowVars.billingAddresses.postalCode,
        phone: flowVars.billingAddresses.phone,
        email: flowVars.billingAddresses.emailAddress
      }
    }
  }
}
