def list = message.getInvocationProperty('billingCompanies');
StringBuffer buff = new StringBuffer();
buff.append(list.billingCompanyId );
def ids = buff.toString().replace(", ","','").replace("[","('").replace("]","')")
message.setInvocationProperty("billingCompanyIds",ids)