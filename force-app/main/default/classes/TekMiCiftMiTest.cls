@isTest
public class TekMiCiftMiTest {
    
    @isTest
    static void sayitesti(){
       string num=TekMiCiftMi.tekcift(12);
        system.assertEquals('ÇİFT', num);
        system.assertNotEquals('TEK', num);
        
          string num2=TekMiCiftMi.tekcift(13);
        system.assertEquals('TEK', num2);
        system.assertEquals('ÇİFT', num2);

        
    }
    
}