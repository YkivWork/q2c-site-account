def addressCompanyProjects = message.getInvocationProperty('billingAddressBillingCompanyToProjects');

def billingCompanyIds = addressCompanyProjects.collect {it.billingCompanyId};
billingCompanyIds.unique();

StringBuffer billingCompanyIdsString = new StringBuffer();
billingCompanyIdsString.append(billingCompanyIds);

def billingCompanyIdsFinalString = billingCompanyIdsString.toString().replace(", ","','").replace("[","('").replace("]","')");
message.setInvocationProperty("billingCompanyIds",billingCompanyIdsFinalString)