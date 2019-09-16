public class ExceptionMethods {
    
    // testing Git
    
    private class MyCustomException extends Exception {}
    
    public static void testCustomException() {
        try {
            throw new MyCustomException ('hello');
        } catch  (MyCustomException e) {
            
            system.debug(e.getTypeName());
        } 
    }
}