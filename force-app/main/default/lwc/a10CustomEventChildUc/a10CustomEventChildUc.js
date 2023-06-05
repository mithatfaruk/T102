import { LightningElement, track } from 'lwc';

export default class A10CustomEventChildUc extends LightningElement {

    @track customer={
        name:'Mahmut',
        yas: 23
    }
    handleClick(){
        const cstEvent= new CustomEvent('ayva', {detail:this.customer})
        this.dispatchEvent(cstEvent)
    
    
    }


}