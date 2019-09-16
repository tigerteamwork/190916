({
    handleClick : function(component, event, helper) {
        window.alert("hello");
        var userInput = component.get("v.userInput");
        component.set("v.appOutput", userInput);
    },
    
    
    
})