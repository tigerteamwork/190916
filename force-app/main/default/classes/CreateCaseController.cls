public class CreateCaseController {
    
    @AuraEnabled
    public static Id saveCaseDB(Case newCase, Id contactId) {
        if(!Schema.SObjectType.Case.isCreateable()) {
            throw new AuraHandledException('You cannot create Cases');
        }
        newCase.contactId = contactId;
                    System.debug('Apex FTW!');

        try {
            insert newCase;
        } catch (Exception e) {
            System.debug('An error has occurred:  ' + e.getMessage());
        }
        
        Contact c = [SELECT AccountId FROM Contact WHERE Id= :contactId];
        return c.AccountId;
    }

}