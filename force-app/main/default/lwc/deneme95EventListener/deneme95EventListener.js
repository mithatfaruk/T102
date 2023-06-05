import { LightningElement } from 'lwc';

export default class Deneme95EventListener extends LightningElement {


    handleDoSomthing(){
        window.alert('LISTEN CHILD')
    }

renderedCallback(){
    this.template.querySelector("c-deneme95-event-listener-child").addEventListener('click',this.handleDoSomthing)
}



clicksayisi=0;
handleClick(){
    this.clicksayisi=parseInt(this.clicksayisi)+1;
}


}