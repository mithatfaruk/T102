import { LightningElement,track } from 'lwc';

export default class A8TrackDecorator extends LightningElement {


    ad = "Resul" ;
    soyad= 'Yuksel'
   @track aileBireyi = {
    name: 'Resul' ,
    yas:50
   }
    handleAd(event){
    this.aileBireyi.name = event.target.value
   // this.ad =  event.target.value ;
    }
    handleYas(event){
  // this.soyad = event.target.value
     this.aileBireyi.yas = event.target.value
    }




}