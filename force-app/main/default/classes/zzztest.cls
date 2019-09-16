public class zzztest {
    
    public static void listOfAccounts() {
	List<Account> accList = [SELECT name, rating FROM account WHERE rating = 'Hot'];
	for (account a : accList) {
		if (a.rating ==  'Hot') {
			System.debug (a.name);
		}
	}
}
    
}