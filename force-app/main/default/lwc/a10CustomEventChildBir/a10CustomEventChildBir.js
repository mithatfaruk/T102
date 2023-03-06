import { LightningElement } from 'lwc';

export default class A10CustomEventChildBir extends LightningElement {

bilgi   
handleClick(){
    const cstEvent= new CustomEvent('elma')
    this.dispatchEvent(cstEvent)


}



}