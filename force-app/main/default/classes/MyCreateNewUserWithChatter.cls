public class MyCreateNewUserWithChatter {
        
    public static void myCreateNewUserWithChatter () {
        
        User tempNewUser = new User();
        String tempNewUserName = 'new' + System.Math.round(System.Math.random() * 1000);
      	
        User tempExistingUser = [SELECT ProfileId, userName, lastName, email, alias, communityNickname, timezonesidkey, localesidkey, emailencodingkey, languagelocalekey FROM user LIMIT 1];
        
		Profile existingChatterFreeProfile = [SELECT ID FROM Profile WHERE Name LIKE '%chatter free%'];
        
        tempNewUser.ProfileId = existingChatterFreeProfile.ID;
        tempNewUser.username = tempNewUserName + '@none.com';
        tempNewUser.email =  tempNewUserName + '@none.com';        
        tempNewUser.lastname = tempNewUserName;
        tempNewUser.alias = tempNewUserName;
        tempNewUser.communitynickname = tempNewUserName;
        tempNewUser.timezonesidkey = tempExistingUser.TimeZoneSidKey;
        tempNewUser.LocaleSidKey = tempExistingUser.LocaleSidKey;
        tempNewUser.EmailEncodingKey = tempExistingUser.EmailEncodingKey;
        tempNewUser.LanguageLocaleKey = tempExistingUser.LanguageLocaleKey;
        
        insert tempNewUser;
    }

}