@isTest
public class AccountTriggerTest {
    
    
    @isTest
    public static void methodForTest() {
        List<Account> accListForTest = new List<Account>();
        for (Integer i=0;i<200;i++) {
            Account acc = new Account();
            acc.name = 'zzztest' +i;
            acc.billingState = 'CA';
            system.debug(acc.Id + ' ' + acc.Name + ' ' + acc.BillingState );
            accListForTest.add(acc);
            accListForTest[i].name='zzzTestzzz'+i;
            accListForTest[i].BillingState = 'CA';
        }            
        insert accListForTest;
        
        List<Account> accResultList = [SELECT name, ShippingState FROM Account];
        for (Account a: accResultList) {
            System.assertEquals('CA', a.ShippingState);
        }
        
    }
    
}