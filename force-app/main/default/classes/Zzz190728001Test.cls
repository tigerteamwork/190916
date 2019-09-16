public class Zzz190728001Test {
    Public static void zzzTest () {
        for (Grade__c zzzTemp : [SELECT name, grade__c , Assessment__r.Class__r.classSubject__c FROM Grade__c]) {
            system.debug (zzztemp.grade__c + ' ' + zzztemp.assessment__r.class__r.classSubject__c);
        }

        
    
    }
}