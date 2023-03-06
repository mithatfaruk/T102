@isTest
public class AccountTriggerTEST {
  /*  @isTest
    static void accountBeforeInsertTest(){
    account acc  =  DataFactory.accountolustur();
        acc.Name='Elma';
        insert acc; 
        
        account yeniacc=[select id,name from account where id =:acc.id];
        system.assertEquals('Elma INSERTED', yeniacc.Name);
        
        
    }
     @isTest
    static void accountBeforeUpdateTest(){
    account acc  =  DataFactory.accountolustur();
        acc.Name='Elma';
        insert acc;
        account yeniacc=[select id,name,BillingCity from account where id =:acc.id];
        yeniacc.BillingCity='Istanbul';
        update yeniacc;
        
        account yeniacc2=[select id,name from account where id =:acc.id];
        system.assertEquals('Elma INSERTED UPDATED', yeniacc2.Name);
        
        
    }*/
   @isTest
    static void BeforInsertAccount(){
         account acc  =  DataFactory.accountolustur();
        	acc.Name='AAAAA';
        	insert acc;
        account newacc=[select id,rating,active__c from account where id =:acc.id];
        system.assertEquals('Warm', newacc.Rating);
        system.assertEquals('Yes', newacc.Active__c);
        system.assertNotEquals('No', newacc.Active__c);
    }
    

}