public class zzztestpagecontroller {
    
    public Map<String,STring> mapOfPossibleSymptoms {
        get{
            if (mapOfPossibleSymptoms == null) {
                mapOfPossibleSymptoms = new Map<String,String>();
            }
            return mapOfPossibleSymptoms;
        }
        set;
    }
    
    public map<String,Boolean> mapOfSelectedSymptoms {
        get {
            if (mapOfSelectedSymptoms == null) {
                mapOfSelectedSymptoms = new Map<String,Boolean>();
            }
            return mapOfSelectedSymptoms;
        }
        set {            
        }
    }
    
    
    
    public zzztestpagecontroller() {
        mapOfPossibleSymptoms = new Map<String,String>();
        mapOfPossibleSymptoms.put('s_8', 'abdominal pain');
        mapOfPossibleSymptoms.put('s_7', 'chest pain');
        system.debug('constructor  ' + mapOfPossibleSymptoms);
        
        mapOfSelectedSymptoms = new Map<String,Boolean>();
        mapOfSelectedSymptoms.put('s_8', false);
        mapOfSelectedSymptoms.put('s_7', false);
        system.debug('constructor  ' + mapOfSelectedSymptoms);
        
    }
    
    
    
    public void submit() {
        system.debug('button  ' + mapOfSelectedSymptoms);
    }
    
}