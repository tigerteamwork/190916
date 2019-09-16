public class UpsertExample {
    
    public static void upsertExample() {
        List<Account> accList = [SELECT BillingCity FROM Account WHERE BillingCity = 'New York'];
        
        for (Account a : accList) {
            a.BillingCity = 'Mumbai';
            a.ShippingCity = 'Mumbai';
        }
        
       	accList.add(new Account(Name = 'Acme', BillingCity = 'Ontario'));
        
        upsert accList;
    }

}