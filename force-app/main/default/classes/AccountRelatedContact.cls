public class AccountRelatedContact {
    
    public static integer contactsayisi(ID sorgulanacakaccountid){
        list<contact>contlist= [select id from contact where accountid =:sorgulanacakaccountid];
        return contlist.size();
    }
    public static list<contact> contactlist(ID sorgulanacakaccountid){
        
        list<contact>contactlist=[SELECT id, lastName , Birthdate ,Email  FROM contact WHERE   AccountId =: sorgulanacakaccountid];
        
        return contactlist;
    }

}