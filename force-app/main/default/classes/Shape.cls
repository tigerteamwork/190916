public abstract class Shape implements Calculatable, Drawable {
    
	Integer numberOfSides;
    
    //constructors
    
    // getters
    
    public Integer getNumberOfSides() {
        return numberOfSides;
    }
    
    // setters 
    
    public void setNumberOfSides (Integer argNumberOfSides) {
        numberOfSides = argNumberOfSides;
        
    }

}