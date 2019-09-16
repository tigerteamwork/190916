trigger AccountTrigger on Account (before insert) {
    system.debug('triggered');
    if (trigger.isBefore) {
        if (trigger.isInsert) {
            system.debug('deep inside trigger');
        AccountTriggerHandler.CreateAccounts(trigger.new);
    }
    }
}