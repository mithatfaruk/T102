import { LightningElement, track } from 'lwc';

export default class Deneme8ButonileListeyeMemberEkleme extends LightningElement {

bireyname='';
bireyid;
bireyyas;

@track aileBireyleri=[{name:'Mithat',
                id:1,
                yas:31},
                {name:'Yüksel',
                id:2,
                yas:58},
                {name:'Sevgi',
                id:3,
                yas:57}                
            ]

            handleName(event){
                this.bireyname = event.target.value;

        }
        handleYas(event){
            this.bireyyas=event.target.value;
        }
        handleClick(){
            const member = {id:this.bireyid,
                            name: this.bireyname,
                            yas:this.bireyyas}

            this.aileBireyleri.push(member);
            bireyid++;                
        }
}



