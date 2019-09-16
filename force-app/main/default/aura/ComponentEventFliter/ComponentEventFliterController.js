({
    priorityChanged : function(component, event, helper) {
        console.log("Firing priorityChangeEvent");
        var newPriority=component.get("v.priority");
        var priorityChangeEvent=component.getEvent("priorityChangeEvent");
        
        priorityChangeEvent.setParams({
            "priority":newPriority
        });
        
        priorityChangeEvent.fire();
        
        console.log("priorityChangeEvent fired");
        
    }
})