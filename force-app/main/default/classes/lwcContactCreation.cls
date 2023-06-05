public with sharing class lwcContactCreation {

    @AuraEnabled   
    public static string ContactCreation(string name, string surname, string title) {

        contact cnt = new contact();
        cnt.FirstName=name;
        cnt.LastName=surname;
        cnt.Title=title;

        insert cnt;

        if(cnt.id !=null){
            return 'Tebrikler';
        }else{
            return 'Error Olustu';
        }

    }
}