public class LeadTriggerBeforeHandler {
    public static void beforInsertHandler(list<lead>leadlist){
        
        // // If a new Lead is created or updated and if ‘Industry’ filed is null; Give a warning(error)
        for(lead ld:leadlist){
                if(ld.industry==null){
                    ld.addError('Bu lead için industry field ı null olamaz');
                }
    }
}
    public static void beforeUpdateHandler(list<lead>leadlist){
          for(lead ld:leadlist){
                if(ld.industry==null){
                    ld.addError('Update edilirken industry fieldı boş olamaz');
                }
            }
        
    }
    
    public static boolean bayrak=true;
    public static void afterInsertHandler(list<lead>gelenleadlist){
        if(bayrak){
            bayrak=false;
        //AFTER CREATING A NEW LEAD, CREATE ANOTHER LEAD (FIRST NAME='AAA NEW LEAD CREATED)
              list<lead>leadlist=new list<lead>();
            
             for(lead newlead:gelenleadlist){
                 
                lead ld= new lead();
                  
                ld.firstname='AAA new lead created';
                ld.lastname='Armut';
                ld.company='Armut Şirketi';
                ld.Industry='Banking';
                leadlist.add(ld);
                
            }
            insert leadlist;
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