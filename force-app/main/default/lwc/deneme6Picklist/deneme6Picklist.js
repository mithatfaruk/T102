import { LightningElement, track } from 'lwc';

export default class PicklistExample extends LightningElement {
    @track marka;
    @track picklistOptions = [
        { label: 'Mercedes', value: 'CLI' },
        { label: 'BWM', value: 'i116' },
        { label: 'AUDI', value: 'Q7' }
    ];

    handleOptionChange(event) {
        this.marka = event.detail.value;
        // Do something with the selected option
        console.log('Selected Option: ', this.marka);
    }
}
