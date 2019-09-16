({
    handleErrors : function(errors) {
        for (var i=0; i<errors.size();i++) {
            if (errors[i] && errors[i].message) {
                console.log(errors[i].message);
            }
        }
        
    }
})