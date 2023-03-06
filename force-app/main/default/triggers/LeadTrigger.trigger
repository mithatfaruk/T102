trigger LeadTrigger on Lead (before insert , before update , before delete , after insert , after update, after delete, after undelete) {
    if ( Trigger.IsBefore &&  Trigger.isInsert) { 
     ////While creating a Lead assign ‘Other’ if Lead Source is null. (Before insert)
        //LeadTriggerBeforeHandler.beforeInserthandler(trigger.new);
  }
      if ( Trigger.IsBefore &&  Trigger.isUpdate) { }
      if ( Trigger.IsBefore &&  Trigger.isDelete) { }
    
    
      if ( Trigger.IsAfter  &&  Trigger.isInsert) {
      //After creating Lead record , create a Task. (After insert)
        List<Task> eklenecekTaskler = new List<Task>();
          
          for(Lead newLead: trigger.new){
              
            Task yeniTask = new Task();  
              yeniTask.Subject= 'Lutfen Lead kisini telefonal ara';
              yeniTask.Status = 'Not Started';
              yeniTask.OwnerId = newLead.OwnerId;
              yeniTask.WhoId = newLead.id;
              eklenecekTaskler.add(yeniTask);
             
          }
          insert eklenecekTaskler;  
      
      }
      if ( Trigger.IsAfter  &&  Trigger.isUpdate) {
       
       /*   
      	list<task>tasklist= new list<task>();
          for(lead mylead:trigger.new){
              lead oldlead=trigger.oldMap.get(mylead.id);
              if(mylead.Rating=='Hot' && mylead.Status=='Closed - Not Converted' && (oldlead.Status=='Open - Not Contacted' ||oldlead.Status=='Working - Contacted')){
        		
          	task newtask= new task();
              newtask.OwnerId=mylead.OwnerId;
              newtask.Subject='Please contact with your manager to inform about this Lead in 3 days';
              newtask.ActivityDate=system.today()+3;
              newtask.WhoId=mylead.id;
              tasklist.add(newtask);
          }
          
          }insert tasklist;
          
          
      */
      }
      if ( Trigger.IsAfter  &&  Trigger.isDelete) { }
      if ( Trigger.IsAfter  &&  Trigger.isUndelete) {  }
 
    
  
    
}