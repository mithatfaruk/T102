import { LightningElement } from 'lwc';
import accountOlustur from '@salesforce/apex/LWCAccountCreation.accCreation';
import {ShowToastEvent} from 'lightning/platformShowToastEvent'
// public static String accCreation( String accIsim  )
export default class A08accountOlustur extends LightningElement {
    accountName
    handleInput(event){
    this.accountName = event.target.value
    
    }
    handleClick(){
        accountOlustur({accIsim:this.accountName})    
        .then (response => {
            if(response == 'tebrikler'){
                 this.dispatchEvent(new ShowToastEvent({
                 title: 'bu da yeni olustu',
                 message : '****** Account created Successfully ******',
                 variant : 'error'
             }))} 
             else {
             this.dispatchEvent(new ShowToastEvent({
                 title: 'Error',
                 message : 'something went wrong',
                 variant : 'success'
             }));
            }
             
         })
        .catch (error=> { console.log('error: ', error);})
        .finally( () => { this.isOpenSpinner = false ;}); 
      } 
}