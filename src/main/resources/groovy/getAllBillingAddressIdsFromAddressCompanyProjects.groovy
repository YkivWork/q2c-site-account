def addressCompanyProjects = message.getInvocationProperty('billingAddressBillingCompanyToProjects');

def billingAddressIds = addressCompanyProjects.collect {it.billingAddressId};
billingAddressIds.unique();

StringBuffer billingAddressIdsString = new StringBuffer();
billingAddressIdsString.append(billingAddressIds);

def billingAddressIdsFinalString = billingAddressIdsString.toString().replace(", ","','").replace("[","('").replace("]","')");
message.setInvocationProperty("billingAddressIds",billingAddressIdsFinalString)