public class WizardDemoController {
    
    public String Name {get;set;}
    public string email {get;set;}
    public string phone {get;set;}
    
    public PageReference goToPageOne() {
        return page.PageOne;
    }
    
    public PageReference goToPageTwo() {
        return page.page2;
    }
    
    public PageReference goToPageThree() {
        return page.page3;
    }
    
    public PageReference goToPageFour() {
        return page.page4;
    }
    
    public PageReference save() {
        Contact c = new Contact();
        c.LastName = name;
        c.Phone = phone;
        c.Email = email;
        insert c;
        PageReference donePage = new ApexPages.StandardController(c).view();
        donePage.setRedirect(true);
        return donePage;
        
    }
    
}