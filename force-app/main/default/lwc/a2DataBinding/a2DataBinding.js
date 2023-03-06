import { LightningElement } from 'lwc';
export default class A2DataBinding extends LightningElement {
    isim = "Hasan BEY" ;
    ad = "Resul" ;
    handleInput(event){
    this.ad =  event.target.value ;
    }
name= "Ayse" ;
buyukIsim;
handleOnChange(event){
    this.name = event.target.value;
}
get IsmiBuykHarfeCevir(){
this.buyukIsim =  this.name.toUpperCase();
return this.buyukIsim;
}
firstName= "Ayse" ;
handleIsim(event){
    this.firstName = event.target.value;
}
lastName="koc";
handleSoyIsim(event){
    this.lastName = event.target.value;
}
upperCasefirstName;
get tamIsim(){
this.upperCasefirstName =  this.firstName.toUpperCase()  + " " +this.lastName.toUpperCase() ;
return this.upperCasefirstName;
}


}