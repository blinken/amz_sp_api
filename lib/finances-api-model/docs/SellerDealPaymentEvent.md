# AmzSpApi::FinancesApiModel::SellerDealPaymentEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**posted_date** | **Date** | The date and time when the financial event was posted. | [optional] 
**deal_id** | **String** | The unique identifier of the deal. | [optional] 
**deal_description** | **String** | The internal description of the deal. | [optional] 
**event_type** | **String** | The type of event: SellerDealComplete. | [optional] 
**fee_type** | **String** | The type of fee: RunLightningDealFee. | [optional] 
**fee_amount** | [**Currency**](Currency.md) | The monetary amount of the fee. | [optional] 
**tax_amount** | [**Currency**](Currency.md) | The monetary amount of the tax applied. | [optional] 
**total_amount** | [**Currency**](Currency.md) | The total monetary amount paid. | [optional] 


