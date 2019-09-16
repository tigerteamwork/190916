public virtual class Person {
    
    // fields 
	private String name;
    private String email;
    private Integer age;

	// constructor 
    public Person(){
        name = '';
        email = '';
        age = 0;
    }
    
    public Person(String someName) {
        name = someName;
        email = '';
        age = 0;
    }
    
    // getters
    public String getName() {
        return name;
    }
    
    public String getEmail(){
        return email;
    }
    
    public Integer getAge() {
        return age;
    }
    
    // setters
    
    public void setName (String someName) {
        name = someName;
    }
    
    public void setEmail (String email) {
        this.email = email;
    }
    
    public void setAge (Integer someAge) {
        if (someAge>0) {
	    	age = someAge;
    	}
    }
    
    
    
	public virtual void toDisplay (){
        system.debug('Person Object:  ');
        system.debug('Name:  ' + name);
        system.debug('Email:  ' + email);
        system.debug('Age:  ' + age);
    }
    
}