import { LightningElement, wire } from 'lwc';
import aramaMotoru from '@salesforce/apex/wireAramaMotoru.wireAccountAra';

export default class Deneme91WireAramaMotoru extends LightningElement {

filtre;

handleAccount(event){
    this.filtre=event.target.value;
}

@wire(aramaMotoru,{isim:'$filtre'}) butunAccountlar;


}