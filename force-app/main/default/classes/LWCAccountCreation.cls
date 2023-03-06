public with sharing class LWCAccountCreation {
    
    @AuraEnabled
    public static String accCreation( String accIsim  ){
         Account acc = new Account();
           acc.Name = accIsim ;
           insert acc;
          
           if(acc.Id != null){
            return 'tebrikler';
           }else{
            return 'error';
           }
        }
    }