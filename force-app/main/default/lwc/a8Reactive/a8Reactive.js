import { LightningElement } from 'lwc';

export default class A8Reactive extends LightningElement {

ad="RESUL"

handleInput(m){
    this.ad=m.target.value;
    console.log("Code render edildi")
}



}