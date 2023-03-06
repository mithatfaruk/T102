public with sharing class AccountControllerAramaMotoruImperative {
  
    //  @AuraEnabled(cacheable=true)
      @AuraEnabled
      public static List<Account> getAllAccounts(String isim ){
          
         String arama= '%'+isim+'%' ;
             
         return  [SELECT id, name FROM account WHERE name LIKE :arama];
      
          
      }
  }