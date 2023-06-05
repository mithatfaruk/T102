import { LightningElement, wire, api } from 'lwc';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { updateRecord } from 'lightning/uiRecordApi';
import { refreshApex } from '@salesforce/apex';
import getVehicles from '@salesforce/apex/ChooseFrameAssetController.getVehicles';

const FIELDS = [
  'Opportunity.Name',
  'Opportunity.StageName',
  'Opportunity.CloseDate',
  'Opportunity.Amount',
];

export default class ChooseFrameAsset extends LightningElement {
  @api recordId;
  selectedVehicle;
  vehicles = [];
  wiredVehiclesResult;

  @wire(getVehicles)
  wiredVehicles(result) {
    this.wiredVehiclesResult = result;
    if (result.data) {
      this.vehicles = result.data;
    } else if (result.error) {
      this.handleError(result.error);
    }
  }

  handleSelection(event) {
    this.selectedVehicle = event.detail.value;
  }

  linkToOpportunity() {
    const fields = {};
    fields['Id'] = this.recordId;
    fields['Vehicle__c'] = this.selectedVehicle;

    const recordInput = { fields };

    updateRecord(recordInput)
      .then(() => {
        this.dispatchEvent(
          new ShowToastEvent({
            title: 'Success',
            message: 'Vehicle (Frame)/Asset has been linked to the Opportunity.',
            variant: 'success',
          })
        );

        return refreshApex(this.wiredVehiclesResult);
      })
      .catch((error) => {
        this.handleError(error);
      });
  }

  handleError(error) {
    this.dispatchEvent(
      new ShowToastEvent({
        title: 'Error',
        message: error.message,
        variant: 'error',
      })
    );
  }
}
