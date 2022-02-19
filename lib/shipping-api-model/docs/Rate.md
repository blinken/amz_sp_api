# AmzSpApi::ShippingApiModel::Rate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_id** | **String** | An identifier for the rate. | [optional] 
**total_charge** | [**Currency**](Currency.md) | The total charge that will be billed for the rate. | [optional] 
**billed_weight** | [**Weight**](Weight.md) | The weight that was used to calculate the totalCharge. | [optional] 
**expiration_time** | **DateTime** | The time after which the offering will expire. | [optional] 
**service_type** | [**ServiceType**](ServiceType.md) |  | [optional] 
**promise** | [**ShippingPromiseSet**](ShippingPromiseSet.md) |  | [optional] 


