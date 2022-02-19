# AmzSpApi::FulfillmentOutboundApiModel::FulfillmentPreviewItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seller_sku** | **String** | The seller SKU of the item. | 
**quantity** | [**Quantity**](Quantity.md) | The item quantity. | 
**seller_fulfillment_order_item_id** | **String** | A fulfillment order item identifier that the seller created with a call to the createFulfillmentOrder operation. | 
**estimated_shipping_weight** | [**Weight**](Weight.md) | The estimated shipping weight of the item quantity for a single item, as identified by sellerSku, in a shipment. | [optional] 
**shipping_weight_calculation_method** | **String** | The method used to calculate the estimated shipping weight. | [optional] 


