import { LightningElement } from 'lwc';

export default class A10CustomEventParent extends LightningElement {

    yeniBilgi = ' BAK BURASI DEGISECEK'
    handleElma(){
this.yeniBilgi=' yepis yeni bilgi firindan taze'
}
childVeri
handleArmut(event){
this.childVeri= event.detail
}
musteri ={
    name:'',
    Yas:0
}
handleAyva(event){
this.musteri= event.detail
}




}