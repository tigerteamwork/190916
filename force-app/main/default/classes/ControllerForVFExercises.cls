public class ControllerForVFExercises {
    
    public String varUserInput {get;set;}
    
    public Id IdFromPage {get;set;}
    
    public List<Account> listOFAccounts {get; set;}
    
    public List<Contact> contacts {get;set;}
    
    public ControllerForVFExercises (ApexPages.StandardController ctrl) {
    }
    
    public void findAccounts () {
        String searchString = '%' + varUserInput + '%';
        listOfAccounts = [SELECT Id,Name, NumberOfEmployees, BillingState FROM Account WHERE Name LIKE :searchString];
    }
    
    public PageReference goToAccountDetails () {        
        PageReference redirect = new PageReference(listOfAccounts[0].id); 
        // '/0033i000003cy33AAA/view'
        return redirect;
    }
    
}