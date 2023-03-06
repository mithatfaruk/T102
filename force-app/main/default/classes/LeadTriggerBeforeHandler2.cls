public class LeadTriggerBeforeHandler2 {
    public static void beforeInserthandler(List<lead> leadList){
  // If a new Lead is created or updated and if ‘Industry’ filed is null; Give a warning(error)  
      /*  for(Lead newLead: leadList){
               
             if (newLead.Industry == null){
              //  newLead.addError('Olusturdugunuz lead icin industry filed bos olamaz!!'); 
                 newLead.Industry.addError('Olusturdugunuz lead icin industry filed bos olamaz!!'); 
                }
          } 
*/
     For(Lead armut: leadList){
     //While creating a Lead assign ‘Other’ if Lead Source is null. (Before insert)
         if (armut.LeadSource == null){
                   armut.LeadSource = 'Other'; 
                }
             
            }   
        
        
    }
    
  public static Boolean bayrak= true;
    
    public static void afterInsertHandler (List<Lead> gelenLeadList){
      
        if(bayrak){
           bayrak = false;
       
        // After creating a new lead, Creates another lead ( FirstName = ‘AAA new Lead Created’ )
           List<lead> leadList = new List<lead>();   
         
          for(Lead newlead : gelenLeadList){
              Lead newOne = new Lead();
              newOne.FirstName = 'AAA new Lead Created';
              newOne.LastName = 'Armut';
              newOne.Company = 'Armut sirketi';
              newOne.Industry = 'Banking';
              leadList.add(newOne);
             }
          insert leadList;
         }
    }
    
    
    public static void beforeUpdateHandler( List<lead> yeniLead , Map<id,Lead> leadEskiHal     ){
        
        for(Lead newLead: yeniLead){
  // Create an error (Warning) trigger when a Lead is updated from 'Open - Not Contacted' status to 'Closed - Converted' or 'Closed - Not Converted' status. (Validation )
            
              
       Lead leadinEskiHali   =      leadEskiHal.get(newLead.id);
              if( leadinEskiHali.Status == 'Open - Not Contacted'  &&  (newLead.Status== 'Closed - Converted' || newLead.Status=='Closed - Not Converted' ) ) {
                  newLead.addError(' Kardes hele bu leadi bir ara bakalim  ondan sonra leadi kapat!!!   ');
                  
              }  
          }
    }
}