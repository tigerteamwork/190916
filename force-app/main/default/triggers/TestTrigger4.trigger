trigger TestTrigger4 on Contact (before insert) {
/*    
    List<Id> listOfAccountIDs = new List<id>();
    List<Account> listOfAccounts = new List<Account>();
      
	for (Contact c : trigger.new) {  
		    listOfAccountIDs.add(c.accountId);
        }
    
    listOfAccounts = [SELECT Id, shippingCity FROM Account WHERE ID in :listOfAccountIDs];
    
    for (contact c : trigger.new) {
        for (account a : listOfAccounts) {
            if (c.AccountId == a.Id) {
                c.MailingCity = a.ShippingCity;
            }
        }
    }
*/
}