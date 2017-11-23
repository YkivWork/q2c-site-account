def addressCompanyToProjects = message.getInvocationProperty('billingAddressBillingCompanyToProjects');
def sfProject = message.getInvocationProperty('sfProjectNumber');
def foundAddressCompanyProjectId = addressCompanyToProjects.find { it.projectId == sfProject}

def billingCompanies = message.getInvocationProperty('billingCompanies');
def foundCompany = billingCompanies.find { it.billingCompanyId == foundAddressCompanyProjectId.billingCompanyId }
message.setInvocationProperty("theBillingCompany",foundCompany)

def billingAddresses = message.getInvocationProperty('billingAddresses');
def foundAddress = billingAddresses.find { it.billingAddressId == foundAddressCompanyProjectId.billingAddressId }
message.setInvocationProperty("theBillingAddress",foundAddress)