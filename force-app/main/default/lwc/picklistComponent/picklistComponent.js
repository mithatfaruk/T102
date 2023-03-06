import { track, LightningElement } from 'lwc';

export default class PicklistComponent extends LightningElement {

secilen='';
seceneklerArray=[{label: 'Türkiye', value:'Ankara'}, {label:'USA',value:'Washington'},{label:'Almanya', value:'Berlin'}]

get secenekler(){
    return this.seceneklerArray
}

handlePicklist(event){
    this.secilen = event.detail.value;
}






}