public with sharing class AccountControllerAramaMotoruImperative {
  
    
      @AuraEnabled
      public static List<Account> getAllAccounts(String isim ){
          
         String arama= '%'+isim+'%' ;
             
         return  [SELECT id, name FROM account WHERE name LIKE :arama];
      
          
      }
  }