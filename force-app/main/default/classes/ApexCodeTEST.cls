@isTest
public class ApexCodeTEST {
    
    @isTest
    static void getfullname(){
    string sonuc=ApexCodes.fullname('Mithat','Karapınar');
     
    system.assertEquals('Mithat Karapınar', sonuc);
    system.assertNotEquals('MithatKarapınar', sonuc);    
    
    }

}