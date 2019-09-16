global class CreateContactFromEmail implements Messaging.InboundEmailHandler {
    global static Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope) {
        Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();
        
        String subjectToCompare ='Create Contact';
        
        if(email.subject.equalsIgnoreCase(subjectToCompare)) {
            Contact c = new Contact ();
            c.LastName = email.plainTextBody;
            try {
                insert c;
                System.debug('Success inserting c');
                result.success = true;
            }catch (Exception e) {
                system.debug('Error:  ' + e);
            }
        }
        
        return result;
    }
}