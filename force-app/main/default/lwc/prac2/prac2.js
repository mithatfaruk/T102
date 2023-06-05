import { LightningElement } from 'lwc';
import contactCreated from '@salesforce/apex/lwcContactCreation.ContactCreation';



export default class Prac2 extends LightningElement {

name1 ='';
surname1='';
title1='';

handleFirstName(event){
    this.name1=event.target.value;
}
handleLastName(event){
    this.surname1=event.target.value;
}
handleTitle(event){
    this.title1=event.target.value;
}

handleClick2(){
    contactCreated({name:this.name1 ,
                    surname:this.surname1,
                    title:this.title1
    })
}

} 