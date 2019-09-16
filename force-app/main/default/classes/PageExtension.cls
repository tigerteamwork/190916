public class PageExtension {
    
    ApexPages.StandardSetController setController {get;set;}
    
    public List<Class__c> classlist {
        get {
            return setController.getRecords();
        }
        set;
        
    }
    
    public PageExtension (ApexPages.StandardSetController controller) {
        setController = new ApexPages.StandardSetController([SELECT Name, ClassSubject__c, ClassTopic__c FROM Class__c WHERE ClassSubject__c = 'Math']);
        setController.setPageSize(5);
    }
    
}