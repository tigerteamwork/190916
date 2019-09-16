({
    doInit : function(component, event, helper) {
    },
    
    
    saveCase : function(component, event, helper) {
        var newCase = component.get("v.newCase");
        var contactId = component.get("v.recordId");
        
        var caseCreatedEvent=$A.get("e.c:CaseCreatedEvent");
        caseCreatedEVent.setParams({
            "accountId":response.getReturnValue()
        });
        caseCreatedEvent.fire();
        
        var getCasesDB = component.get("c.saveCaseDB");
        getCasesDB.setParams({
            "newCase" : newCase,
            "contactId" : contactId,
        });
        
        getCasesDB.setCallback(this, function(response) {
            var state = response.getState();
            if (state==="SUCCESS") {
                
                var caseCreatedEvent=$A.get("e.c:CaseCreatedEvent");
                caseCreatedEVent.setParams({
                    "accountId":response.getReturnValue()
                });
                caseCreatedEvent.fire();
                /*
             * var toastEvent = $A.get("e.force:showToast");
            toastEvent.setParams({
                "title": "Success!",
                "message": "The record has been updated successfully."
            });
            toastEvent.fire(); 
            */
            } else {
                /* 
             * var toastEvent = $A.get("e.force:showToast");
            toastEvent.setParams({
                "title": "NOT NOT Success!",
                "message": "The record has NOT NOT been updated successfully."
            });
            toastEvent.fire();
            */
                
            }
            
        })
        
    },
    
    zzz : function(component, event, helper) {
    },    
    
})