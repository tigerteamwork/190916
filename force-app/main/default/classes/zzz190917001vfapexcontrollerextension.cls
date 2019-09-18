public class zzz190917001vfapexcontrollerextension {
    
    public static List<Contact> contactRecordList { get; set; }
    
    public zzz190917001vfapexcontrollerextension(apexpages.StandardSetController ctrl) {
        contactRecordList = [SELECT Id, Name, Account.Name FROM Contact LIMIT 20];
    }

}