({
    changeText : function(component, event, helper) {
        var outputText = component.find("myText")
        console.log (outputText);
        
        outputText.set("v.value", "Hello");
        outputText.set("v.title", "Look at me");
       
    },
})