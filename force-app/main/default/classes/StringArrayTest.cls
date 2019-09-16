public class StringArrayTest {
    
    public static List<String> generateStringArray(Integer n) {
        List<String> aList = new List<String>();
        if (n<1) {
            n=1;
        }
        for (Integer i=0; i<n; i++) {
            aList[i] = ('Test ' + i);
            
            
        }
        return aList;
    }
    
}