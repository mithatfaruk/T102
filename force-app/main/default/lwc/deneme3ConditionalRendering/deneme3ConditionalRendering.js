import { LightningElement} from 'lwc';

export default class Deneme3ConditionalRendering extends LightningElement {


flag=false;


handleFlag(event){
    this.flag=event.target.checked;
}

showMessage;
enteredPass='';
realPass='Mithat';

handlePass(event){
    this.enteredPass=event.target.value;

    if(this.enteredPass===this.realPass){
        this.showMessage=true;
        
    }else{
        this.showMessage=false;
    }

}





}