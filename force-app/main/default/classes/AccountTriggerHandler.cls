public class AccountTriggerHandler {
    
  /*  
    public static void beforeInsertHandler( List<account> accList ) {
        
       /*  for(Account acc: accList){
               acc.Rating = 'Hot';
             if (acc.Industry == null){
                   acc.Industry = 'Banking'; 
                }
               }*/
        
       /* for(account acc:acclist){
            if(acc.rating==null){
                acc.Rating='Warm';
                acc.Description='This record is created by ' + system.userinfo.getName() + ' at ' + system.today();
            }if(acc.Ownership=='Public'){
                acc.Rating='Hot';
                acc.Description='This record is updated by ' + system.userinfo.getName() + ' at ' + system.today();
            }
        }
             
    } 
    
    public static void afterInsertHandler( List<account> accList ){
           
        List<contact> yeniContlar = new List<contact>();
                for ( Account x : accList){
                   Contact cntNew = new Contact();
                   cntNew.LastName = 'Contact of '+ x.name;
                   cntNew.AccountId = x.id;
                    yeniContlar.add(cntNew);
                }
              insert yeniContlar;
     
    }
    
    public static void beforeUpdateHandler( List<account> accList ){
      //Before updating an Account assign ‘Education’ to Industry field
            for(Account acc: accList) {
                acc.Industry = 'Education';
            }
        
    } 
    
    public static void afterUndeleteHandler( Map<id,account> myMap   ){
   // When ever an account is restored, state restore information like restore time and who restored the record on the description field of RELATED CONTACT
     
         List<Contact> cntList = [ SELECT Id, AccountId, Description FROM Contact 
                                 WHERE AccountId IN: myMap.keySet()]; 
            for(Contact cnt: cntList){
               
               cnt.Description = 'Account restored by ' + System.UserInfo.getName() + ', on ' + system.today();
 
            }
         Database.update(cntList );
    }
    */
}