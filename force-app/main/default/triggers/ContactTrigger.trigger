trigger ContactTrigger on Contact (before insert , before update , before delete , after insert , after update, after delete, after undelete) {
    
    SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  {
            
           set<string>emails= new set<string>();
            set<string>phones = new set<string>();
            for(contact cnt:trigger.new){
                emails.add(cnt.Email);
                phones.add(cnt.Phone);
            }  
            
            list<contact>existingContact= [SELECT Id, Email, Phone FROM Contact WHERE Email IN :emails OR Phone IN :phones];
            for(contact cnt:trigger.new){
                for(contact cnt2:existingContact){
                    if(cnt.Email==cnt2.Email|cnt.Phone==cnt2.Phone){
                        cnt.Email.AddError('Aynı isimde email ya da phone olan contact var');
                    }
                }
            }
            
            
            
            
            
            
       set<id>idset= new set<id>();
            for(contact cnt:trigger.new){
                if(cnt.accountId !=null){
                    idset.add(cnt.accountId);
                }
                list<account>acclist=[select id,billingaddress,BillingStreet,BillingCity,BillingPostalCode, BillingState,BillingCountry from account where id in :idset];
                for(account acc:acclist){
                    if(acc.BillingAddress !=null &&cnt.MailingAddress==null){
                       cnt.MailingStreet=acc.BillingStreet;
                       cnt.mailingCity=acc.BillingCity;
                       cnt.MailingPostalCode=acc.BillingPostalCode;
                       cnt.MailingState=acc.BillingState;
                       cnt.MailingCountry=acc.BillingCountry;
                    }
                    
                }
            }
            
            


}
}
}