public virtual class Rectangle extends Shape {
    
//    Double height;
//    Double width;
    
    public Double height {
        get;
        set;
    }

    public Double width {
        get;
        set;
    }	
    
    public Rectangle() {
        setNumberOfSides(4);
        height = 0;
        width = 0;
    }
    
    public Rectangle (Double argHeight, Double argWidth) {
        this();
        this.height = argHeight;
        this.width = argWidth;
    }
    
    public void draw () {
        system.debug('Drawing');
    }
    
    public Double calculateArea () {
		return height * width;
    }
    
    public Double calculatePerimeter() {
        return 2 * height + 2 * width;
    }
    
    
}