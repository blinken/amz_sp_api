# AmzSpApi::MerchantFulfillmentApiModel::ShippingService

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipping_service_name** | **String** | A plain text representation of a carrier&#39;s shipping service. For example, \&quot;UPS Ground\&quot; or \&quot;FedEx Standard Overnight\&quot;.  | 
**carrier_name** | **String** | The name of the carrier. | 
**shipping_service_id** | [**ShippingServiceIdentifier**](ShippingServiceIdentifier.md) |  | 
**shipping_service_offer_id** | **String** | An Amazon-defined shipping service offer identifier. | 
**ship_date** | [**Timestamp**](Timestamp.md) | The date that the carrier will ship the package. | 
**earliest_estimated_delivery_date** | [**Timestamp**](Timestamp.md) | The earliest date by which the shipment will be delivered. | [optional] 
**latest_estimated_delivery_date** | [**Timestamp**](Timestamp.md) | The latest date by which the shipment will be delivered. | [optional] 
**rate** | [**CurrencyAmount**](CurrencyAmount.md) | The amount that the carrier will charge for the shipment. | 
**shipping_service_options** | [**ShippingServiceOptions**](ShippingServiceOptions.md) | Extra services offered by the carrier. | 
**available_shipping_service_options** | [**AvailableShippingServiceOptions**](AvailableShippingServiceOptions.md) |  | [optional] 
**available_label_formats** | [**LabelFormatList**](LabelFormatList.md) |  | [optional] 
**available_format_options_for_label** | [**AvailableFormatOptionsForLabelList**](AvailableFormatOptionsForLabelList.md) |  | [optional] 
**requires_additional_seller_inputs** | **BOOLEAN** | When true, additional seller inputs are required. | 


