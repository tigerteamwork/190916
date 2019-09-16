trigger testTrigger on Student__c (after insert) {
    
    system.debug(student__c.New.id);

}