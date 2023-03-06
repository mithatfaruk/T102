public class HastaTriggerHandler {
    public static void hastaPaylasimMethodu(list<Hasta__c>hastalist){
         /*  Hasta__Share yeniPaylasim = new Hasta__Share();
           yeniPaylasim.ParentId = hastaIdsi;  //   paylasilacak hasta id si
           yeniPaylasim.UserOrGroupId = paylasilacakKisiIdsi;  //  kiminle paylasilacak
           yeniPaylasim.AccessLevel = 'Edit';      // yetkisi ne olacak
           yeniPaylasim.RowCause = 'Manual';
        return yeniPaylasim;*/
        
        List<hasta__Share> hastaListesi = new List<hasta__Share>();
            for(Hasta__c hasta:hastalist){
             Hasta__Share yeniPaylasim = new Hasta__Share();
               yeniPaylasim.ParentId = hasta.id ;  //   paylasilacak hasta id si
               yeniPaylasim.UserOrGroupId = hasta.Hemsire__c;  //  kiminle paylasilacak
               yeniPaylasim.AccessLevel = 'Edit';      // yetkisi ne olacak
               yeniPaylasim.RowCause = 'Manual';
               hastaListesi.add(yeniPaylasim);
            }
            for(Hasta__c hasta:hastalist){
             Hasta__Share yeniPaylasim = new Hasta__Share();
               yeniPaylasim.ParentId = hasta.id ;  //   paylasilacak hasta id si
               yeniPaylasim.UserOrGroupId = hasta.Doktor__c;  //  kiminle paylasilacak
               yeniPaylasim.AccessLevel = 'Edit';      // yetkisi ne olacak
               yeniPaylasim.RowCause = 'Manual';
               hastaListesi.add(yeniPaylasim);
            }
         insert hastaListesi;
        
        
        
    }
}