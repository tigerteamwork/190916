// default without sharing

public with sharing class WithSharingExample {
    
    public list<Class__C> classes {
        get {
            return [SELECT Name FROM class__c];
        }
    }

}