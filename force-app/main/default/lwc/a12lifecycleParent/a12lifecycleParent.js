import { LightningElement } from 'lwc';

export default class A12lifecycleParent extends LightningElement {

constructor(){
 super()
 alert ('PARENT CONSTRUCTOR() alert')
}
connectedCallback(){
    alert ('PARENT connectedCallback() alert')
}
renderedCallback(){
    alert ('PARENT renderedCallback() alert')  
}
disconnectedCallback(){
}
errorCallback(error,stack){
}


}