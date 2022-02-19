# AmzSpApi::FulfillmentOutboundApiModel::FulfillmentOrderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seller_sku** | **String** | The seller SKU of the item. | 
**seller_fulfillment_order_item_id** | **String** | A fulfillment order item identifier submitted with a call to the createFulfillmentOrder operation. | 
**quantity** | [**Quantity**](Quantity.md) |  | 
**gift_message** | **String** | A message to the gift recipient, if applicable. | [optional] 
**displayable_comment** | **String** | Item-specific text that displays in recipient-facing materials such as the outbound shipment packing slip. | [optional] 
**fulfillment_network_sku** | **String** | Amazon&#39;s fulfillment network SKU of the item. | [optional] 
**order_item_disposition** | **String** | Indicates whether the item is sellable or unsellable. | [optional] 
**cancelled_quantity** | [**Quantity**](Quantity.md) | The item quantity that was cancelled by the seller. | 
**unfulfillable_quantity** | [**Quantity**](Quantity.md) | The item quantity that is unfulfillable. | 
**estimated_ship_date** | [**Timestamp**](Timestamp.md) | The estimated date and time that the item quantity is scheduled to ship from the fulfillment center. Note that this value can change over time. If the shipment that contains the item quantity has been cancelled, estimatedShipDate is not returned. | [optional] 
**estimated_arrival_date** | [**Timestamp**](Timestamp.md) | The estimated arrival date and time of the item quantity. Note that this value can change over time. If the shipment that contains the item quantity has been cancelled, estimatedArrivalDate is not returned. | [optional] 
**per_unit_price** | [**Money**](Money.md) | The amount to be collected from the recipient for this item in a COD (Cash On Delivery) order. | [optional] 
**per_unit_tax** | [**Money**](Money.md) | The tax on the amount to be collected from the recipient for this item in a COD (Cash On Delivery) order. | [optional] 
**per_unit_declared_value** | [**Money**](Money.md) | The monetary value assigned by the seller to this item. | [optional] 


