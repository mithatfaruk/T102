import { LightningElement ,api } from 'lwc';
export default class A092getSetChild extends LightningElement {
/*
 @api gosterilecekYil
 dogumYili = 2023 - this.gosterilecekYil
*/
container
@api get dogumYili(){
return this.container
}
set dogumYili(data){
const d = new Date();
let year = d.getFullYear();
this.container = year- data
}
}