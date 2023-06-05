import { LightningElement, track } from 'lwc';

export default class Deneme7Decorators extends LightningElement {


    ad='Mithat';
    soyad='Karapinar';


   @track aileBireyleri={name:'Mithat',
                yas: 31}

                handleIsim(event){
                    this.aileBireyleri.name=event.target.value;
                }
                handleYas(event){
                    this.aileBireyleri.yas=event.target.value;
                }





}