import { LightningElement } from 'lwc';

export default class A6ArabaComposition extends LightningElement {

ArabaMarkasi="HONDA"
yakitinTuru='ELEKTRIKLI'

handleYakitTuru(ev){
    this.yakitinTuru=ev.target.value
    
}

}