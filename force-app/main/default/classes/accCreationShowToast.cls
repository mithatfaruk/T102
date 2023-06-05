public with sharing class accCreationShowToast {

    @AuraEnabled
    public static string accCreation(string accIsim) {

        account acc = new account();
        acc.Name=accIsim;

        insert acc;

        if(acc.Id !=null){
            return 'tebrikler';
        }else{
            return 'olmadi';
        }

    }
}