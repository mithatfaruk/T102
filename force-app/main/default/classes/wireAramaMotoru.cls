public with sharing class wireAramaMotoru {

    @AuraEnabled(cacheable=true)
    public static list<account> wireAccountAra(string isim) {

        string arama= '%' + isim + '%';

        return [Select id,name from Account Where name like :arama];

    }
}