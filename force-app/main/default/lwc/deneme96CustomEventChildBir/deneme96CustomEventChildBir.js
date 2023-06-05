import { LightningElement } from 'lwc';

export default class Deneme96CustomEventChildBir extends LightningElement {


handleClick(){
    const cstEvent= new CustomEvent('elma')
    this.dispatchEvent(cstEvent);
}



}