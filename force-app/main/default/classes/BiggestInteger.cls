public class BiggestInteger {   
    
    public static Integer biggestInteger (List<Integer> arglist) {
        Integer biggest = arglist[0];
        for (Integer i : arglist) biggest = (i > biggest) ? i : biggest;
        return biggest;
    } 
    
   
   
    public static Integer MyBiggestIntegerOldVersion (List<Integer> argIntList) {        
    	Integer tempBiggestInt;
        for (Integer i = 0; i < argIntList.size(); i++) {
            if (i==0) {
                tempBiggestInt = argIntList[i];
            } else {
                tempBiggestInt = system.math.max(argIntList[i], tempBiggestInt);
            }
    	}
        return tempBiggestInt;
 	}
   
}