public class PaginationExtension {
    
    public ApexPages.StandardSetController setController {get;set;}
    
    public List<Account> displayedAccounts {
        get {
            // return [SELECT Id FROM Account];
            return setController.getRecords();
        }
        set;
    }
    
    public paginationExtension(ApexPages.StandardSetController controller) {
        setController = new ApexPages.StandardSetController([SELECT Name FROM Account]);
        setController.setPageSize(5);
    }

}