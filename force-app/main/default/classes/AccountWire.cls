public with sharing class AccountWire {

    @auraEnabled (cacheable=true)
     
    public static list <account> allAccounts() {


        return [Select Id,Name From Account];

    }
}