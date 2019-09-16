({
    doInit : function(component, event, helper) {
        var numOne = component.get("v.numOne");
        var numTwo = component.get("v.numTwo");
        
        if (numOne === undefined) {
            console.log("numOne is undefined");
        }
        if (numTwo === undefined) {
            console.log("numTwo is undefined");
        }
    },
    
    addNumber : function(component, event, helper) {
        var numOne = component.get("v.numOne");
        var numTwo = component.get("v.numTwo");
        var sum = numOne + numTwo;
        component.set("v.sum", sum);
    },
    
    sumChanged : function(component, event, helper) {
        helper.helperMethod1(component);
    },
})