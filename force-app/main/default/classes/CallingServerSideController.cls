public class CallingServerSideController {
    
    @auraEnabled
    public static List<Account> getAccounts(){
        return [SELECT Name FROM Account];
    }

}