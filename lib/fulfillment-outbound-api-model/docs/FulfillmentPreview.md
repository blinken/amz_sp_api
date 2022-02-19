# AmzSpApi::FulfillmentOutboundApiModel::FulfillmentPreview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipping_speed_category** | [**ShippingSpeedCategory**](ShippingSpeedCategory.md) |  | 
**scheduled_delivery_info** | [**ScheduledDeliveryInfo**](ScheduledDeliveryInfo.md) |  | [optional] 
**is_fulfillable** | **BOOLEAN** | When true, this fulfillment order preview is fulfillable. | 
**is_cod_capable** | **BOOLEAN** | When true, this fulfillment order preview is for COD (Cash On Delivery). | 
**estimated_shipping_weight** | [**Weight**](Weight.md) | Estimated shipping weight for this fulfillment order preview. | [optional] 
**estimated_fees** | [**FeeList**](FeeList.md) | The estimated fulfillment fees for this fulfillment order preview, if applicable. | [optional] 
**fulfillment_preview_shipments** | [**FulfillmentPreviewShipmentList**](FulfillmentPreviewShipmentList.md) |  | [optional] 
**unfulfillable_preview_items** | [**UnfulfillablePreviewItemList**](UnfulfillablePreviewItemList.md) |  | [optional] 
**order_unfulfillable_reasons** | [**StringList**](StringList.md) | Error codes associated with the fulfillment order preview that indicate why the order is not fulfillable.  Error code examples:  DeliverySLAUnavailable InvalidDestinationAddress | [optional] 
**marketplace_id** | **String** | The marketplace the fulfillment order is placed against. | 
**feature_constraints** | [**Array&lt;FeatureSettings&gt;**](FeatureSettings.md) | A list of features and their fulfillment policies to apply to the order. | [optional] 


