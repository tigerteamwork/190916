public class MyControllerExtension {
    
    private Account acc;
    
    public MyControllerExtension(ApexPages.StandardController controller) {
        this.acc = (Account) controller.getRecord();
    }
    
    public String getGreeting() {
        return 'Hello ' + acc.Name + acc.Id;
    }

}