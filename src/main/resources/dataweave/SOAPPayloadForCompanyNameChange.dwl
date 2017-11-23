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
        contact_ind: 1,
        company_name: flowVars.theBillingCompany.billingCompanyName when flowVars.theBillingCompany.billingCompanyName != null otherwise '0'
      }
    }
  }
}