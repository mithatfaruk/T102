public with sharing class ContactController {
    
    @AuraEnabled(cacheable=true)
    public static list<contact> getContactList(){
        return [select id,name,firstname,lastname from contact limit 5];
        
    }

}