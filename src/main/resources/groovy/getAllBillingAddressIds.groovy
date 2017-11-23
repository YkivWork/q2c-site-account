def list = message.getInvocationProperty('billingAddresses');
StringBuffer buff = new StringBuffer();
buff.append(list.billingAddressId );
def ids = buff.toString().replace(", ","','").replace("[","('").replace("]","')")
message.setInvocationProperty("billingAddressIds",ids)

