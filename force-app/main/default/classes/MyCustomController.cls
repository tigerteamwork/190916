public class MyCustomController {
    
    public Class__c myClass {get;set;}
    
    public MyCustomController() {
        ApexPages.currentPage().getParameters().put('id','a013i000001WC39AAG');
        
        Id classId = ApexPages.currentPage().getParameters().get('id');
        myClass = [SELECT Id, Name FROM Class__c WHERE id= :classId];
    }
    
}