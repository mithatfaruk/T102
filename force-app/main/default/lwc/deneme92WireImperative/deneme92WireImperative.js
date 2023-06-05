import { LightningElement } from 'lwc';
import imperativeArama from '@salesforce/apex/imperativeAramaMotoru.imperativeAccount'

export default class Deneme92WireImperative extends LightningElement {

arananAccount;

handleAccount(event){
    this.arananAccount=event.target.value;
}

accountList;
hata;

    handleClick() {
        imperativeArama({isim: this.arananAccount})
            .then(result => {
                this.accountList = result;
            })
            .catch(error => {
                this.hata = error;
            });
    }



}