# AmzSpApi::FinancesApiModel::ProductAdsPaymentEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**posted_date** | **Date** | The date and time when the financial event was posted. | [optional] 
**transaction_type** | **String** | Indicates if the transaction is for a charge or a refund.  Possible values:  * charge - Charge  * refund - Refund | [optional] 
**invoice_id** | **String** | Identifier for the invoice that the transaction appears in. | [optional] 
**base_value** | [**Currency**](Currency.md) | Base amount of the transaction, before tax. | [optional] 
**tax_value** | [**Currency**](Currency.md) | Tax amount of the transaction. | [optional] 
**transaction_value** | [**Currency**](Currency.md) | The total amount of the transaction. Equal to baseValue + taxValue. | [optional] 


