import { LightningElement } from 'lwc';

export default class A10EventBubbling extends LightningElement {

   icClick=0
   torundanGelenBilgi
   handleIcClick(e){
    this.icClick ++
    this.torundanGelenBilgi ='torununuz takdir aldı'
   }
   ortaClick=0
   babadanGelenBilgi
   handleOrtaClick(e){
    this.ortaClick ++
    this.babadanGelenBilgi='Babanın maaşı arttı'


   }
   disClick=0

   handleDisClick(){

    this.disClick ++
   }


}