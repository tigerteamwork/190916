public class MyDeleteExample {
    
    public static void showDeletedKelly() {
    
    	system.debug([select name from student__c where name = 'sue']);
    
        List<student__c> ss = [select name from student__c where name = 'sue' ALL ROWS];

        system.debug(ss);
        
        undelete ss;
    }
}