({
    doInit : function(component, event, helper) {
        var getAccounts = component.get("c.getAccounts");
        // action.setParams();
        getAccounts.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.accounts", response.getReturnValue());
            } else if (state==="ERROR") {
                helper.handleErrors(response.getError());
                // synchronous
                var handleErrorMethod = component.get("c.handleErrorsController");
                handleErrorMethod.setParams({errors:response.getError()});
                $A.enqueueAction(handleErrorMethod);
            }
        });
        $A.enqueueAction(getAccounts);
    },
    
    HandleErrorsController : function(errors) {
        
    },
    
    
    
})