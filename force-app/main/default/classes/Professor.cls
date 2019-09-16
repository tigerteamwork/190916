public class Professor extends Person {
    
    public Decimal salary {
        get {
            if (salary == null) {
                salary = 0.0;
            }
            return salary;
        }
        set {
            if (value < 0.00) {
               System.debug('You cannot have a negative salary. That\'s called debt.');
            } else {
                salary = value;
            }
        }        
    }
    
    public Professor () {
        salary = 0.00;
    }
    
    public Professor (String name, String email) {
//        super(name,email);
        super (name);
    	setEmail (email);
    
        
    }
    
    public override void display () {
        system.debug('Salary:  ' + salary);
        super.display();
    }
    
    
}