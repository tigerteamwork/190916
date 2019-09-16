public class DatabaseClassExample {
    public static void testTransactionControl () {
        account a = new Account(Name='testAccount123');
        insert a;
        
        SavePoint sp = Database.setSavepoint();
        Database.rollback(sp);
        
    }
}