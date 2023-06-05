import { LightningElement } from 'lwc';

export default class Deneme94GetSetMethod extends LightningElement {



index=0;

handleSayi(event){
    this.index=event.target.value;
}

isimler=['ahmet','mehmet','mustafa','hüseyin'];

get isim(){

    if(this.index < this.isimler.length){
        return this.isimler[this.index].toUpperCase();
    }else   {
        window.alert('böyle bir sayı yok')
    }

}










}