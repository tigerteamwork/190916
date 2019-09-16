public class zzzAPIStuff {    
    
    
    
    public static void sendMyRequest() {
        Http myHttp = new Http();
        HttpRequest myRequest = new HttpRequest();
        String myEndpoint = 'https://api.infermedica.com/v2/diagnosis';
        String myURLQueryString = '';
        
        //        StaticResource myFile = [SELECT Body FROM StaticResource WHERE name='APIKey' LIMIT 1];
        //        String myApiKey = myFile.Body.toString();
        String myAppId = '6d986317';
        String myApiKey = 'c41d71f2e5dfec09068ed7f42848044e';
        
        myRequest.setEndpoint(myEndpoint+myURLQuerySTring);
        myRequest.setMethod('POST');
        myRequest.setHeader('App-Id', '6d986317');
        myRequest.setHeader('App-Key', myApiKey);
        myRequest.setHeader('Content-Type', 'application/json');
        
        Map<String, Object> myQueryMap = new Map<String, Object>();
        List<Map<String, String>> mySymptomObjectsList = new List<Map<String, String>>();
        Map<String, String> mySymptomObject1 = new Map<String, String>();
        Map<String, String> mySymptomObject2 = new Map<String, String>();
        Map<String, String> mySymptomObject3 = new Map<String, String>();
        mySymptomObject1.put('id', 's_1193');
        mySymptomObject1.put('choice_id', 'present');
        mySymptomObject2.put('id', 's_488');
        mySymptomObject2.put('choice_id', 'present');
        mySymptomObject3.put('id', 's_418');
        mySymptomObject3.put('choice_id', 'present');
        mySymptomObjectsList.add(mySymptomObject1);
        mySymptomObjectsList.add(mySymptomObject2);
        mySymptomObjectsList.add(mySymptomObject3);
        
        myQueryMap.put('sex', 'male');
        myQueryMap.put('age', 30);
        myQueryMap.put('evidence', mySymptomObjectsList);
        myRequest.setBody(JSON.serialize(myQueryMap));
        
        
        HttpResponse theirResponse = myHttp.send(myRequest); 
        
        System.debug(theirResponse.getStatusCode());
        System.debug(theirResponse.getStatus());
        System.debug(theirResponse.getBody());
        
        
        
        Map<String, Object> jsonMap1 = (Map<String, Object>) JSON.deserializeUntyped(theirResponse.getBody());
        system.debug(jsonMap1);
        for (String s1 : jsonMap1.keySet()) {
            system.debug(s1);
            if (s1 == 'conditions') {
                system.debug(jsonMap1.get(s1));
                /*
Map<String, Object> jsonMap2 = (Map<String, Object>) jsonMap1.get(s1);
system.debug(jsonMap2);           
for (String s2 : jsonMap2.keySet()) {
system.debug(s2);
if (s2 == 'common_name') {
system.debug(s2);
system.debug(jsonMap2.get(s2));
}


}
*/
            }
            
        }
    }
}