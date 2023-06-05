import { LightningElement } from 'lwc';
import accountOlustur from '@salesforce/apex/accCreationShowToast.accCreation';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class deneme93AccountCreShowToast extends LightningElement {



accountName;

handleAccount(event){
    this.accountName=event.target.value;
}

handleClick(){
    accountOlustur({accIsim: this.accountName})
    .then(response => {
        if(response =='tebrikler'){
            this.dispatchEvent(new ShowToastEvent({title:'ACCOUNT CREATED SUCCESSFULLY', 
                                                  message:'****Account Created Succesfully****', 
                                                  variant:'error'
        }))}

        else{
            this.dispatchEvent(new ShowToastEvent({title:'error', 
                                                  message:'****something went wrong****', 
                                                  variant:'success'}));

        }
}).catch(error => {console.log('error: ', error); })
.finally( ()=>{this.isOpenSpinner =false;});
}
}