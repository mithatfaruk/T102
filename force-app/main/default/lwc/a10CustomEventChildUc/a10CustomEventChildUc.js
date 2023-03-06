import { LightningElement } from 'lwc';

export default class A10CustomEventChildUc extends LightningElement {

    customer={
        name:'Mahmut',
        yas: 23
    }
    handleClick(){
        const cstEvent= new CustomEvent('ayva', {detail:this.customer})
        this.dispatchEvent(cstEvent)
    
    
    }


}