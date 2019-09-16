@isTest
public class TesterForProjectZero {
    
    @isTest
    static void testFibonacci () {
        Integer expected = 1;
        Integer actual = ProjectZero.fibonacci(1);
        
        system.assertEquals (expected, actual, 'wrong 1' );
        
        expected = 3;
        actual = ProjectZero.fibonacci(4);
        
        system.assertEquals (expected, actual, 'wrong 2' );
        
    }
    
    @isTest
    Static void testSortArray() {
        
        Integer expected = 1;
        List<Integer> argList = new List<integer>{4,3,2,1};
        Integer actual = ProjectZero.sortArray(argList)[0];
        
        system.assertEquals (expected, actual, 'wrong sort' );
        
    }
    
    

}