import { LightningElement,wire } from 'lwc';
import getAllAccount from '@salesforce/apex/AccountWire.allAccounts';
export default class Deneme9WireDecorator extends LightningElement {


    @wire(getAllAccount) butunAccountlar;









}