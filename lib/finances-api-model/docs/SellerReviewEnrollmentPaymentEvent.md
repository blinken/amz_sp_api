# AmzSpApi::FinancesApiModel::SellerReviewEnrollmentPaymentEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**posted_date** | **Date** | The date and time when the financial event was posted. | [optional] 
**enrollment_id** | **String** | An enrollment identifier. | [optional] 
**parent_asin** | **String** | The Amazon Standard Identification Number (ASIN) of the item that was enrolled in the Early Reviewer Program. | [optional] 
**fee_component** | [**FeeComponent**](FeeComponent.md) |  | [optional] 
**charge_component** | [**ChargeComponent**](ChargeComponent.md) |  | [optional] 
**total_amount** | [**Currency**](Currency.md) | The FeeComponent value plus the ChargeComponent value. | [optional] 


