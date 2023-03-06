import { LightningElement } from 'lwc';

export default class A10CustomEventChildIki extends LightningElement {
    sehir='SIVAS turkiyenin baskentidir'
    handelClick(){
        const cstEvent = new CustomEvent('armut' , {detail:this.sehir}    )
         this.dispatchEvent(cstEvent)
      }


}