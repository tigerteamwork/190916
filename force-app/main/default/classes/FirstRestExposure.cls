@restResource(urlMapping='/v1/MyClasses/')

global class FirstRestExposure {

    @HttpGet
    global static List<Class__c> getClasses() {
        return [SELECT Id FROM Class__c];
    }
    
    
    
}