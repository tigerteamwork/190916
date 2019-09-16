public class AccountTriggerHandler {
    
    public static void CreateAccounts(List<Account> argAccList) {
        for (Account acc: argAccList) {
            acc.ShippingState = acc.BillingState;          
            system.debug('inside handler');
            system.debug(acc.Shippingstate);
        }      
    }
}