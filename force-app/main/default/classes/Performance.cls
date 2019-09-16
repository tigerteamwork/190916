public class Performance extends Play {
    
    private String theater;
    private Critic performanceCritic;
    
    public Performance() {
        super();
        theater = '';
        performanceCritic = new Critic();
    }
    
    public Performance (String argTheater, Critic argPerformanceCritic) {
        super();
        theater = argTheater;
        performanceCritic = argPerformanceCritic;
    }
    
   	public void setTheater(String argTheather) {
        theater = argTheather;
    }
    
    public void getPerformanceCritic(Critic argPerformanceCritic) {
        performanceCritic = argPerformanceCritic;
    }

    public String getTheater() {
        return theater;
    }
    
    public Critic getPerformanceCritic() {
        return performanceCritic;
    }
    
    public override void display() {
        System.debug('Performance Object:  ');
        super.display();
        System.debug('Theater:  ' + theater);
        performanceCritic.toDisplay();
    }

}