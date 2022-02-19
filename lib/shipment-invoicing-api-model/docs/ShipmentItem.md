# AmzSpApi::ShipmentInvoicingApiModel::ShipmentItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asin** | **String** | The Amazon Standard Identification Number (ASIN) of the item. | [optional] 
**seller_sku** | **String** | The seller SKU of the item. | [optional] 
**order_item_id** | **String** | The Amazon-defined identifier for the order item. | [optional] 
**title** | **String** | The name of the item. | [optional] 
**quantity_ordered** | **Float** | The number of items ordered. | [optional] 
**item_price** | [**Money**](Money.md) | The selling price of the item multiplied by the quantity ordered. Note that ItemPrice excludes ShippingPrice and GiftWrapPrice. | [optional] 
**shipping_price** | [**Money**](Money.md) | The shipping price of the item. | [optional] 
**gift_wrap_price** | [**Money**](Money.md) | The gift wrap price of the item. | [optional] 
**shipping_discount** | [**Money**](Money.md) | The discount on the shipping price. | [optional] 
**promotion_discount** | [**Money**](Money.md) | The total of all promotional discounts in the offer. | [optional] 
**serial_numbers** | [**SerialNumbersList**](SerialNumbersList.md) | The list of serial numbers. | [optional] 


