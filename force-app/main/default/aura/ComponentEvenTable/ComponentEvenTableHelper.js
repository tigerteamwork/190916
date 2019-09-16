({
    getCases : function(Component) {
        var getCasesAction= component.get("c.getCasesWithPriority");
        
        getCasesAction.setParams({
            "priority":component.get("v.priority")
        });
        
        getCasesAction.setCallback(this,function(response){
            var state=response.getState();
            if (component.isValid() && state==="SUCCCESS") {
                console.log("Cases got got");
                
                console.log(response.getReturnValue());
                
                
                console.log(JSON.stringify(response.getReturnValue()));
                
                component.set("v.data", response.getReturnValue());
                
            } else {
                console.log ("FAILED getting cases" + state);
            }
            
        });
        
    },
    
})