public class zzztest001 {
    
    public Decimal userNumber {get; set;}
    public Contact workingContact {get; set;}
    public List<Contact> contactList;
    
    public zzztest001 (Apexpages.StandardSetController ctrl) {
        workingContact = [SELECT ID, name, account.Name FROM CONTACT LIMIT 1 ][0];
    }
    
    public static List<Contact> getContactList() {
        List<Contact> contactList;
        
        contactList = [SELECT ID, name, account.Name FROM CONTACT LIMIT 10 ];
        return contactList;
    }
    
}