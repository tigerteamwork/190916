public class SelectQueries {
    
    public static List<Account> getAllAccounts () {
        
        List<Account> accountList = new List<Account>();
        
        accountList = [SELECT Id FROM Account];
        
        return accountList;
    }
    
    public static List<Contact> getAllContacts() {
        return [SELECT Id FROM Contact];
    }
    
    // get all Accounts where name = GenePoint
    public static List<Account> getGenePointAccounts(){
        return [SELECT Id, Name From Account WHERE Name = 'GenePoint'];
    }
    
    public static List<Account> getAccountsWithName(String argName){
        return [SELECT Id, Name From Account WHERE Name = :argName];
    }
    
	public static List<Student__c> getStudentsEnrolled(){
        return [SELECT Name, Status__c From Student__c WHERE Status__c = 'Enrolled'];
    }
    
  	public static List<Student__c> getStudentsWithGivenStatus(String argStatus){
        return [SELECT Name, Status__c From Student__c WHERE Status__c = :argStatus];
    }
    
    public static List<Account> getFirstFiveAccountsWithMoreThan100Empoyees(){
        return [SELECT 
                	Name, NumberOfEmployees 
                FROM 
                	Account 
                WHERE 
                	NumberOfEmployees> 100
                ORDER BY
                	Id DESC
                LIMIT 
               		5
               ];
    }
    
//    aggregate stuff

    // relationships
    public static List<ClassEnrollment__c> getMathCE() {
        return [SELECT Name, Class__r.ClassSubject__c FROM ClassEnrollment__C WHERE Class__r.ClassSubject__c = 'MATH'];
    }
    
    public static List <Account> getAccountsAndTheirContacts(){
        return [select name, (select name from contacts) from account];
    }
    
   	public static List<ClassEnrollment__c> getAllEnrollmentsForGivenStudent (String argStudentName) {
        return [SELECT Id FROM ClassEnrollment__c WHERE Student__r.name = :argStudentName];
    }
    
    
    
    
    
    

}