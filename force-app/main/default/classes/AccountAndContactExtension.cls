public class AccountAndContactExtension {
    public Contact childContact;
    private ApexPages.StandardController stdController;
    
    public AccountAndContactExtension(ApexPages.StandardController controller) {
        childContact = new Contact();
        stdController = controller;
        
    }
    
    public Contact getChildContact() {
        return childContact;
    }
    
    public void setChildContact (Contact childContact) {
        this.childContact = childContact;
    }
    
    public PageReference saveAccountAndContact() {
        stdController.save();
        childContact.AccountId = stdController.getId();
     	insert childContact;
        
       return new ApexPages.StandardController(childContact).view();
    }

}