import { LightningElement,track } from 'lwc';

export default class A8TrackList extends LightningElement {

    bireyName='isim'
    bireyYas=99
bireyId=3
   @track  aileBireyleri = [
       {  id:1,
           name:'Resul',
           yas:50
        }  ,
       { id:2,
         name:'Pinar',
         yas:47
       }
       ]
       handleName(event){
          this.bireyName =event.target.value
       }
       handleYas(event){
          this.bireyYas = event.target.value
       }
       handleClick(event){
        const member =    { id:this.bireyId,
                            name:this.bireyName,
                             yas:this.bireyYas
                         }
       this.aileBireyleri.push(member)
                  bireyId++
       }
}