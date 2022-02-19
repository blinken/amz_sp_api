# AmzSpApi::FulfillmentOutboundApiModel::CreateFulfillmentOrderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seller_sku** | **String** | The seller SKU of the item. | 
**seller_fulfillment_order_item_id** | **String** | A fulfillment order item identifier that the seller creates to track fulfillment order items. Used to disambiguate multiple fulfillment items that have the same SellerSKU. For example, the seller might assign different SellerFulfillmentOrderItemId values to two items in a fulfillment order that share the same SellerSKU but have different GiftMessage values. | 
**quantity** | [**Quantity**](Quantity.md) |  | 
**gift_message** | **String** | A message to the gift recipient, if applicable. | [optional] 
**displayable_comment** | **String** | Item-specific text that displays in recipient-facing materials such as the outbound shipment packing slip. | [optional] 
**fulfillment_network_sku** | **String** | Amazon&#39;s fulfillment network SKU of the item. | [optional] 
**per_unit_declared_value** | [**Money**](Money.md) | The monetary value assigned by the seller to this item. | [optional] 
**per_unit_price** | [**Money**](Money.md) | The amount to be collected from the recipient for this item in a COD (Cash On Delivery) order. | [optional] 
**per_unit_tax** | [**Money**](Money.md) | The tax on the amount to be collected from the recipient for this item in a COD (Cash On Delivery) order. | [optional] 


