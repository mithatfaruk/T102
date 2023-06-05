import { LightningElement } from 'lwc';

export default class Deneme96CustomEventParent extends LightningElement {

    yenibilgi='BABA NABER'

    handleElma(){
        this.yenibilgi='ARABADA GAZ PEDAL'
    }

     
    childveri
    handleArmut(event){
        this.childveri=event.detail
    }











}