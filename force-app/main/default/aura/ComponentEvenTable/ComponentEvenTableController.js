({
    doInit : function(component, event, helper) {
        component.set("v.columns", [
            {Label: "Case Number", fieldName: "CaseNumber", type:"text"},
            {Label: "Subject", fieldName: "Subject", type:"text"},
            {Label: "Status", fieldName: "Status", type:"text"},
            {Label: "Priority", fieldName: "Priority", type:"text"}
            
        ])
    },
    
    doInit : function(component, event, helper) {
        console.log("Handling priorityChangeEvent");
({
    doInit : function(component, event, helper) {
        component.set("v.columns", [
            {Label: "Case Number", fieldName: "CaseNumber", type:"text"},
            {Label: "Subject", fieldName: "Subject", type:"text"},
            {Label: "Status", fieldName: "Status", type:"text"},
            {Label: "Priority", fieldName: "Priority", type:"text"}
            
        ])
    },
    
    doInit : function(component, event, helper) {
        console.log("Handling priorityChangeEvent");
        
        var newPriority = event.getParams("priority");
        
        component.set("v.priority", newPriority);
        helper.getCases(component);
        
        console.log("priorityChangeEvent handled");
    },
    
})

        
        var newPriority = event.getParams("priority");
        
        component.set("v.priority", newPriority);
        helper.getCases(component);
        
        console.log("priorityChangeEvent handled");
    },
    
})