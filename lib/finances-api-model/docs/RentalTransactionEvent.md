# AmzSpApi::FinancesApiModel::RentalTransactionEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amazon_order_id** | **String** | An Amazon-defined identifier for an order. | [optional] 
**rental_event_type** | **String** | The type of rental event.  Possible values:  * RentalCustomerPayment-Buyout - Transaction type that represents when the customer wants to buy out a rented item.  * RentalCustomerPayment-Extension - Transaction type that represents when the customer wants to extend the rental period.  * RentalCustomerRefund-Buyout - Transaction type that represents when the customer requests a refund for the buyout of the rented item.  * RentalCustomerRefund-Extension - Transaction type that represents when the customer requests a refund over the extension on the rented item.  * RentalHandlingFee - Transaction type that represents the fee that Amazon charges sellers who rent through Amazon.  * RentalChargeFailureReimbursement - Transaction type that represents when Amazon sends money to the seller to compensate for a failed charge.  * RentalLostItemReimbursement - Transaction type that represents when Amazon sends money to the seller to compensate for a lost item. | [optional] 
**extension_length** | **Integer** | The number of days that the buyer extended an already rented item. This value is only returned for RentalCustomerPayment-Extension and RentalCustomerRefund-Extension events. | [optional] 
**posted_date** | **Date** | The date and time when the financial event was posted. | [optional] 
**rental_charge_list** | [**ChargeComponentList**](ChargeComponentList.md) | A list of charges associated with the rental event. | [optional] 
**rental_fee_list** | [**FeeComponentList**](FeeComponentList.md) | A list of fees associated with the rental event. | [optional] 
**marketplace_name** | **String** | The name of the marketplace. | [optional] 
**rental_initial_value** | [**Currency**](Currency.md) | The amount of money the customer originally paid to rent the item. This value is only returned for RentalChargeFailureReimbursement and RentalLostItemReimbursement events. | [optional] 
**rental_reimbursement** | [**Currency**](Currency.md) | The amount of money Amazon sends the seller to compensate for a lost item or a failed charge. This value is only returned for RentalChargeFailureReimbursement and RentalLostItemReimbursement events. | [optional] 
**rental_tax_withheld_list** | [**TaxWithheldComponentList**](TaxWithheldComponentList.md) | A list of taxes withheld information for a rental item. | [optional] 


