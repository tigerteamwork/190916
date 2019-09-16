@isTest

public class TesterClass {
    
    
/*    
    @testSetup
    static void setup() {
        list<Account> accList = new List<Account>();
        accList.add(new Account(Name = 'test1', NumberOfEmployees=100));
        accList.add(new Account(Name = 'test2', NumberOfEmployees=1001));
        accList.add(new Account(Name = 'test3', NumberOfEmployees=100011));

        
        accList.add(new Account(Name = 'test11', NumberOflocations__c=2));
        accList.add(new Account(Name = 'test22', NumberOflocations__c=5));
        accList.add(new Account(Name = 'test33', NumberOflocations__c=10));
        insert accList;
    }    
    
    
        @isTest static void testRunAs() {
        user u = [select id from user where id = '0053i000000prPUAAY'];
        list<class__c> classes = [select id from class__c];
        system.debug('number of classes seen in system context: ' + classes.size());
        system.runAs(u) {
        	classes = [select id from class__c];
        	system.debug('number of classes seen as Billy: ' + classes.size());
        }
    }
*/

    @isTest static void testStartAndStop() {
        for (Integer i = 0; i < 200; i++) {
            List <Lead> argleadlist = [select id from lead limit 1];
            
        }
        system.debug(System.Limits.getQueries() + '   ' + system.Limits.getLimitQueries());
        Test.startTest();
        system.debug(System.Limits.getQueries() + '   ' + system.Limits.getLimitQueries());
		Test.stopTest();
        
    }
    
    
    
    
/*    
    @isTest
    
    static void testingSomeMethod () {
        
        Integer expected = 11;
        Integer actual = MethodsToTest.addTwoNumbers (5,6);
        
        System.assertEquals (actual, expected, 'Math is a lie...');
           
    }
    
    @isTest
    static void testUpdateAccountSizeFromNumberOfEmployees() {
        
        accountMethods.updateAccountSizeFromNumberOfEmployees();
        
        account a1 = [SELECT Size__c FROM Account WHERE Name = 'test1' LIMIT 1];
		system.assertEquals ('Small', A1.Size__c, 'This account should have a size of small');  
        
        account a2 = [SELECT Size__c FROM Account WHERE Name = 'test2' LIMIT 1];
		system.assertEquals ('Medium', A2.Size__c, 'This account should have a size of medium');  
        
        account a3 = [SELECT Size__c FROM Account WHERE Name = 'test3' LIMIT 1];
		system.assertEquals ('Large', A3.Size__c, 'This account should have a size of large');  
        
        list<Account> accs = [select numberOfEmployees, size__c from account where name like 'test%'];
            for (Account a : accs) {
                
                if (a.numberofemployees <=  1000) {
                    system.assertEquals('Small', a.size__c, 'should be small');
                } else if (a.numberofemployees <= 10000) {
                    system.assertEquals('Medium', a.size__c, 'should be medium');
                } else {
                    system.assertEquals('Large', a.size__c, 'should be large');
                }
                
            }
        
	    }
        
        @isTest
        static void testUpdateAccountSize() {
            
        	accountMethods.updateAccountSizeFromNumberOflocations();
            
        	list<Account> accs = [select numberOflocations__c, size__c from account where name like 'test%'];
            for (Account a : accs) {
                
                if (a.numberoflocations__c <=  3) {
                    system.assertEquals('Small', a.size__c, 'should be small');
                } else if (a.numberoflocations__c <= 6) {
                    system.assertEquals('Medium', a.size__c, 'should be medium');
                } else {
                    system.assertEquals('Large', a.size__c, 'should be large');
                }
                
            }
            
            
            
        }

    
*/    

}