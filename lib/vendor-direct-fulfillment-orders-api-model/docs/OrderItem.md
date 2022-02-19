# AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_sequence_number** | **String** | Numbering of the item on the purchase order. The first item will be 1, the second 2, and so on. | 
**buyer_product_identifier** | **String** | Buyer&#39;s standard identification number (ASIN) of an item. | [optional] 
**vendor_product_identifier** | **String** | The vendor selected product identification of the item. | [optional] 
**title** | **String** | Title for the item. | [optional] 
**ordered_quantity** | [**ItemQuantity**](ItemQuantity.md) | Item quantity ordered. | 
**scheduled_delivery_shipment** | [**ScheduledDeliveryShipment**](ScheduledDeliveryShipment.md) | Details for the scheduled delivery shipment. | [optional] 
**gift_details** | [**GiftDetails**](GiftDetails.md) | Gift message and wrapId details. | [optional] 
**net_price** | [**Money**](Money.md) | Net price (before tax) to vendor with currency details. | 
**tax_details** | [**OrderItemTaxDetails**](OrderItemTaxDetails.md) |  | [optional] 
**total_price** | [**Money**](Money.md) | The price to Amazon each (cost). | [optional] 


