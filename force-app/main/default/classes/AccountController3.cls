public with sharing class AccountController3 {//LWC ile iletişim için with sharing ve auraenabled annotation kullanılır
    
    @auraEnabled (cacheable=true) //Bunu cach e yükle. orada kopyası bulunsun accountların. işlem hızı artsın
    public static list<account>getAllAccounts(){
      /* 1.yol  list<account>acclist= [select id,name from account];
        return acclist; */
        
        //2.yol
        return [select id,name from account];
        
         
       /* string sorgu = 'select id,name from account';
        return database.query(sorgu);*/
        
    }
}