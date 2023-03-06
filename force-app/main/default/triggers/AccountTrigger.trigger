trigger AccountTrigger on Account (before insert , before update , before delete , after insert , after update, after delete, after undelete) {
   SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  { 
          // AccountTriggerHandler.beforeInsertHandler( Trigger.new ); 
          /*  for(account acc:trigger.new){
                acc.Name=acc.Name + ' INSERTED';
            }*/
            for(account acc : trigger.new){
                acc.Rating='Warm';
                acc.Active__c='Yes';
            }
            
        }
        WHEN BEFORE_UPDATE  {
        // AccountTriggerHandler.beforeInsertHandler( Trigger.new );
       //  AccountTriggerHandler.beforeUpdateHandler(Trigger.new );
        /*for(account acc:trigger.new){
                acc.Name=acc.Name + ' UPDATED';
            }*/
              
        
        
       
        }
        WHEN BEFORE_DELETE  {
        /*    
            list<opportunity>opplist= [select id,accountid from opportunity where accountid in:trigger.old ];
            for(account acc:trigger.old){
                if(opplist.size()>0){
                    acc.AddError('You can not delete account having opportunity');
                }
            }*/
            
            
        }
        WHEN AFTER_INSERT   { 
          // AccountTriggerHandler.afterInsertHandler(Trigger.new ); 
            
           
        }
        WHEN AFTER_UPDATE   { 
       
        
        
        }
        WHEN AFTER_DELETE   { }
        WHEN AFTER_UNDELETE { 
    // When ever an account is restored, state restore information like restore time and who restored the record on the description field of RELATED CONTACT
      // AccountTriggerHandler.afterUndeleteHandler( Trigger.newMap  );
        }
 
    }
 
  
}