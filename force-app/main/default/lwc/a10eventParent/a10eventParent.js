import { LightningElement } from 'lwc';
export default class A10eventParent extends LightningElement {
    
    clickSayisi=0
    handleClick(){
        this.clickSayisi = parseInt(this.clickSayisi) +1
    }

        handleYeniClick(){
            window.alert('Bak beni childdaki buton aktif etti')
        }
        renderedCallback(){
            this.template.querySelector('c-a10event-child-js').addEventListener('click',this.handleYeniClick)
        }







}