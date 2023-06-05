import { LightningElement } from 'lwc';

export default class Deneme1Component extends LightningElement {

isim=''
soyisim=''
yas;
flag=false
reverse


handleIsim(event){
    this.isim=event.target.value
}
handleSoyIsim(event){
    this.soyisim=event.target.value
}
handleYas(event){
    this.yas=event.target.value
}
flagHandler(e){
    this.flag=e.target.checked
}
    get screen(){
        this.reverse=this.isim.split("").reverse().join("") + "-" + this.soyisim.split("").reverse().join("") + "-" + this.yas. 
        return this.reverse;
    
    }



}