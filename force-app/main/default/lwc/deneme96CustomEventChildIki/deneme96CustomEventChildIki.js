import { LightningElement } from 'lwc';

export default class Deneme96CustomEventChildIki extends LightningElement {

sehir='SIVAS BASKENTTIR'

handleData(){
    const cstEvent = new CustomEvent('armut',{detail:this.sehir})
    this.dispatchEvent(cstEvent)
}



}