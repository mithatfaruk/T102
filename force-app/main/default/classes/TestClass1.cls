@isTest
public class TestClass1 {
    @isTest
    static void contactsayisiTEST(){
        Account acc = DataFactory.accountolustur();
        acc.Name='Test1';
        acc.Rating='Hot';
        insert acc;
        
        list<contact>contactlist= new list<contact>();
        contact cnt= DataFactory.contactolustur();
        cnt.AccountId=acc.id;
        contactlist.add(cnt);
        insert contactlist;
        
        integer contsayi=AccountRelatedContact.contactsayisi(acc.id);
        system.assertEquals(1,contsayi);
        
    }
		
    @isTest
    static void contactlisttest(){
        Account acc = DataFactory.accountolustur();
        acc.Name='Test1';
        acc.Rating='Hot';
        insert acc;
        
         
        
        contact cnt= DataFactory.contactolustur();
        cnt.AccountId=acc.id;
        
        insert cnt;
        
         
        
        contact cnt2= DataFactory.contactolustur();
        cnt2.AccountId=acc.id;
        
        insert cnt2;
        
        list<contact>contactlist2 =AccountRelatedContact.contactlist(acc.id);
        system.assertEquals(2, contactlist2.size());
        
    }
}