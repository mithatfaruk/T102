trigger OpportunityTrigger on Opportunity (before insert , before update , before delete , after insert , after update, after delete, after undelete) {
    
    
SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  {
        // Populate Opportunity description (‘Test purpose Opportunity ‘ ) when user creates Opportunity 
            For(Opportunity opp: Trigger.new){
                opp.Description= 'Sevi seviyorum SALESFORCE  umarim duygukar karsiliklidir';
                
            }
            
            for(opportunity opp:trigger.new){
                opportunity oldopp=trigger.oldMap.get(opp.id);
                integer diff=opp.CreatedDate.date().daysBetween(date.today());
                if(diff>30 && opp.StageName=='Prospecting' && oldopp.StageName=='Prospecting'){
                    opp.Description.addError('please make more effort to procees' + system.today());
                }
            }
            
            
            
         }
        WHEN BEFORE_UPDATE  { }
        WHEN BEFORE_DELETE  {
         //Prevent deleting of an  Opportunity  if Opportunity is ‘Closed Won’
            for(opportunity opp: trigger.old){
               if( opp.StageName== 'Closed Won'   ) {
                  opp.addError(' kardes zaten opp kazanilmis  keyfini sur noye durduk yere siliyorsun!!! '); 
               }
                
            }
        }
        WHEN AFTER_INSERT   { }
        WHEN AFTER_UPDATE   {
        // 1)When the Opportunity stage is updated to "Negotiation/Review" Develop a trigger
        // 2) that creates a TASK for the owner
             List<Task> eklenecekTaskler = new List<Task>();
            for(Opportunity opp : trigger.new) {
                
           Opportunity eskiHal= trigger.oldMap.get(opp.id);
                if( opp.StageName== 'Negotiation/Review'   &&  eskiHal.StageName != 'Negotiation/Review'    ) {
      
                          Task yeniTask = new Task();  
                          yeniTask.Subject= 'Kardes  arti kopp neredeyse basarili olmak uzere  lutfen patrona haber ver';
                          yeniTask.Status = 'Not Started';
                          yeniTask.OwnerId = opp.OwnerId;
                          yeniTask.whatId = opp.id;
                          eklenecekTaskler.add(yeniTask);
                 } 
            } 
             insert eklenecekTaskler;  
     
        }
        WHEN AFTER_DELETE   { }
        WHEN AFTER_UNDELETE { }
 
    }
}