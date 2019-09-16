public with sharing class VFUserInputControllerExtension {
    
    public String inputFromUser {
        get {
            return inputFromUser;
        }
        set {
            inputFromUser = value;
        }
    }
    
    
    
    public List<Contact> contactList { get; set; }
    
    
    
    public String messageFromController = 'Please enter Contact name';
    
    public String getMessageFromController() {
        return messageFromController;
    }
    
    public void setMessageFromController (String argString) {
        messageFromController = argString;
        if (messageFromController == null) {
            messageFromController = 'Please enter Contact name';
        }
    }
    
    
    
    public VFUserInputControllerExtension (ApexPages.StandardSetController ctrl) {
        
    }
    
    
    
    public void getContact() {
        if (inputFromUser == null) {
            messageFromController = 'Not a valid name';   
        } else if (inputFromUser =='') { 
            messageFromController = 'Not a valid name';   
        } else {
            try {
                String searchString = '%' + inputFromUser + '%';
                contactList = [SELECT Name, account.name FROM Contact WHERE (LastName LIKE :searchString) OR (FirstName LIKE :searchString)];
                messageFromController = 'Enter name';  
            } catch (Exception e) {
                messageFromController = 'Error with search';  
            }
        }
        
    }
    
    
    
    public pageReference sendHttpRequest() {
        
        
        if (inputFromUser == null) {
            messageFromController = 'Not a valid name';   
            /*
        } else if (inputFromUser =='') { 
            messageFromController = 'Not a valid name';   
            */
        } else {
            try {
                Http myHttp = new Http();
                HttpRequest myRequest  = new HttpRequest();
                myRequest.setMethod('GET');
                myRequest.setEndpoint('https://www.google.com');
                HttpResponse theirResponse = myHttp.send(myRequest);
                messageFromController = theirResponse.getStatus() + theirResponse.getStatusCode() ;
                PageReference returnPage = new PageReference('https://www.google.com');
                returnPage.setAnchor('_blank');
                returnPage.setRedirect(true);
                return returnPage;
            } catch (Exception e) {
                messageFromController = 'Error with sending http request' + e.getMessage();  
            }
        }
        return null;
    }
    
    
    
    
}