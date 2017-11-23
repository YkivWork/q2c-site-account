%dw 1.0
%output application/java
%namespace env http://schemas.xmlsoap.org/soap/envelope/
%namespace aria urn:client:api:wsdl:document/literal_wrapped:vers:11.0:aria_complete_m_api
%var responseElement = payload.env#Envelope.env#Body.aria#get_acct_billing_group_details_mResponseElement
%var id = flowVars.ariaMPI as :string when flowVars.ariaMPI != null otherwise 0
%var index = ((payload.env#Envelope.env#Body.aria#get_acct_billing_group_details_mResponseElement.*billing_groups.master_plans_summary.client_plan_instance_id) find id)[0]
---
{
      errorMsg:                 responseElement.error_msg,
      errorCode:                 responseElement.error_code,
      clientBillingGroupId:     responseElement.billing_groups.client_billing_group_id,
      billingGroupNumber:     payload.env#Envelope.env#Body.aria#get_acct_billing_group_details_mResponseElement.*billing_groups[index].billing_group_no when index != null otherwise "No Match Found"
      
                  
}