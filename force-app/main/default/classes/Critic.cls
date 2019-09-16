public class Critic extends Person {
    
    Integer yearsOfExperience;
    
    public Critic() {
        super();
        yearsOfExperience = 0;
    }
    
    public Critic (String argName, String argEmail) {
		super();
        this.setName(argName);
        this.setEmail(argEmail);
        yearsOfExperience = 0;
    }
    
    public integer getYearsOfExperience () {
        return yearsOfExperience;
    }
    
    public void setYearsOfExperience (integer argYearsOfExperience) {
        yearsOfExperience = argYearsOfExperience;
    }
    
    public override void toDisplay() {
        system.debug('Critic Object:  ');
        super.toDisplay();
        system.debug(yearsOfExperience);
        
    }
    
    
}