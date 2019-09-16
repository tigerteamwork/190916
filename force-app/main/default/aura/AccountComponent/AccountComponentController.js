({
    createAccount : function(component, event, helper) {
        var newAccount = component.get("v.newAccount");
        component.reRender("outputCard");        
        
        
    },
    
    
    reDraw : function(component, event, helper) {
        component.reRender("outputCard");        
        
    },
    
})