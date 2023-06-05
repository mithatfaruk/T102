public with sharing class imperativeAramaMotoru {

    @AuraEnabled
    public static list<account> imperativeAccount(string isim) {
        
        string arama= '%' + isim + '%';

        return [select id,name from account where name like:arama];


    }
}