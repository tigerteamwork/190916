public class FindMyClasses {
    	
    public String className {
    	get;
        set {
            className = value;
            system.debug(className);
        }
    }
    
    public list<Class__c> classes {
        get;
        set;
    }
    
    public void findClasses () {
        system.debug('button pushed');
        String searchString = '%' + className + '%';
        classes = [SELECT Name FROM Class__c WHERE Name LIKE :searchString];
                system.debug(classes);
    }

}