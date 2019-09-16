global class MyWebService {
    webservice static Id makeContact(String contactLastName, Account a) {
        Contact c = new Contact (LastName= contactLastName, accountId = a.Id);
        insert c;
        return c.Id;
        
    }

}