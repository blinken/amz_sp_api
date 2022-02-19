# AmzSpApi::FulfillmentOutboundApiModel::FulfillmentShipment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amazon_shipment_id** | **String** | A shipment identifier assigned by Amazon. | 
**fulfillment_center_id** | **String** | An identifier for the fulfillment center that the shipment will be sent from. | 
**fulfillment_shipment_status** | **String** | The current status of the shipment. | 
**shipping_date** | [**Timestamp**](Timestamp.md) | The meaning of the shippingDate value depends on the current status of the shipment. If the current value of FulfillmentShipmentStatus is:  * Pending - shippingDate represents the estimated time that the shipment will leave the Amazon fulfillment center.  * Shipped - shippingDate represents the date that the shipment left the Amazon fulfillment center. If a shipment includes more than one package, shippingDate applies to all of the packages in the shipment. If the value of FulfillmentShipmentStatus is CancelledByFulfiller or CancelledBySeller, shippingDate is not returned. The value must be in ISO 8601 date time format. | [optional] 
**estimated_arrival_date** | [**Timestamp**](Timestamp.md) | The estimated arrival date and time of the shipment, in ISO 8601 date time format. Note that this value can change over time. If a shipment includes more than one package, estimatedArrivalDate applies to all of the packages in the shipment. If the shipment has been cancelled, estimatedArrivalDate is not returned. | [optional] 
**shipping_notes** | **Array&lt;String&gt;** | Provides additional insight into shipment timeline. Primairly used to communicate that actual delivery dates aren&#39;t available. | [optional] 
**fulfillment_shipment_item** | [**FulfillmentShipmentItemList**](FulfillmentShipmentItemList.md) |  | 
**fulfillment_shipment_package** | [**FulfillmentShipmentPackageList**](FulfillmentShipmentPackageList.md) |  | [optional] 


