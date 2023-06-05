import { LightningElement } from 'lwc';

export default class Deneme1 extends LightningElement {

st='Kardeş'    ;
isim='';
soyisim='';
fullname='';

handleisim(event){
    this.isim=event.target.value;
}

handleSoyisim(event){
    this.soyisim=event.target.value
}

get tamisim(){
    this.fullname=(this.isim + ' ' + this.soyisim).toUpperCase();
    return this.fullname;
}

num;
num2;
mult;

number1(event){
    this.num=event.target.value;
}
number2(event){
    this.num2=event.target.value;
}

get result(){
    this.mult=this.num*this.num2;
    return this.mult;
}




}