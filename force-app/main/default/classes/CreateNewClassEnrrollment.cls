public class CreateNewClassEnrrollment {
    
    public static void createNewClassEnrollment() {
        
        //class
        Class__c c = new Class__c();
        c.Name = 'HIS400';
        insert c;
        
        //student
        Student__c s = new student__c();
        s.name = 'Tom';
        insert s;
        
        //class enrollment 
        ClassEnrollment__c ce = new ClassEnrollment__c(Class__c =c.id, student__c = s.id);
        insert ce;
	
    
    }
}