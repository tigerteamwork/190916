({
    dobChanged : function(component, event, helper) {
        let dob=new Date(component.get("v.dob"));
        let totalDays=0;
        let now=new Date;
        
        if (dob===undefined || dob>now) {
            dob=now;
        }
        totalDays=Math.floor((now-dob)/1000/60/60/24);
        component.set("v.totalDays", totalDays);
        
    },
    
    numFeetChanged : function(component, event, helper) {
        let numFeet=component.get("v.numFeet");
        let numInches=component.get("v.numInches");
        let totalMeters=0;
        
        if (numFeet===undefined || numFeet<0) {
            numFeet=0;
        }
        if (numInches === undefined || numInches<0) {
            numInches=0;        
        }   
        totalMeters=(numFeet*12+numInches)*2.54/100;
        component.set("v.totalMeters", totalMeters);
    },
    
    numInchesChanged : function(component, event, helper) {
        let numFeet=component.get("v.numFeet");
        let numInches=component.get("v.numInches");
        let totalMeters=0;
        
        if (numFeet===undefined || numFeet<0) {
            numFeet=0;
        }
        if (numInches === undefined || numInches<0) {
            numInches=0;        
        }   
        totalMeters=(numFeet*12+numInches)*2.54/100;
        component.set("v.totalMeters", totalMeters);
    },            
    
})