# AmzSpApi::OrdersApiModel::OrderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asin** | **String** | The Amazon Standard Identification Number (ASIN) of the item. | 
**seller_sku** | **String** | The seller stock keeping unit (SKU) of the item. | [optional] 
**order_item_id** | **String** | An Amazon-defined order item identifier. | 
**title** | **String** | The name of the item. | [optional] 
**quantity_ordered** | **Integer** | The number of items in the order.  | 
**quantity_shipped** | **Integer** | The number of items shipped. | [optional] 
**product_info** | [**ProductInfoDetail**](ProductInfoDetail.md) | Product information for the item. | [optional] 
**points_granted** | [**PointsGrantedDetail**](PointsGrantedDetail.md) | The number and value of Amazon Points granted with the purchase of an item. | [optional] 
**item_price** | [**Money**](Money.md) | The selling price of the order item. Note that an order item is an item and a quantity. This means that the value of ItemPrice is equal to the selling price of the item multiplied by the quantity ordered. Note that ItemPrice excludes ShippingPrice and GiftWrapPrice. | [optional] 
**shipping_price** | [**Money**](Money.md) | The shipping price of the item. | [optional] 
**item_tax** | [**Money**](Money.md) | The tax on the item price. | [optional] 
**shipping_tax** | [**Money**](Money.md) | The tax on the shipping price. | [optional] 
**shipping_discount** | [**Money**](Money.md) | The discount on the shipping price. | [optional] 
**shipping_discount_tax** | [**Money**](Money.md) | The tax on the discount on the shipping price. | [optional] 
**promotion_discount** | [**Money**](Money.md) | The total of all promotional discounts in the offer. | [optional] 
**promotion_discount_tax** | [**Money**](Money.md) | The tax on the total of all promotional discounts in the offer. | [optional] 
**promotion_ids** | [**PromotionIdList**](PromotionIdList.md) |  | [optional] 
**cod_fee** | [**Money**](Money.md) | The fee charged for COD service. | [optional] 
**cod_fee_discount** | [**Money**](Money.md) | The discount on the COD fee. | [optional] 
**is_gift** | **BOOLEAN** | When true, the item is a gift. | [optional] 
**condition_note** | **String** | The condition of the item as described by the seller. | [optional] 
**condition_id** | **String** | The condition of the item.  Possible values: New, Used, Collectible, Refurbished, Preorder, Club. | [optional] 
**condition_subtype_id** | **String** | The subcondition of the item.  Possible values: New, Mint, Very Good, Good, Acceptable, Poor, Club, OEM, Warranty, Refurbished Warranty, Refurbished, Open Box, Any, Other. | [optional] 
**scheduled_delivery_start_date** | **String** | The start date of the scheduled delivery window in the time zone of the order destination. In ISO 8601 date time format. | [optional] 
**scheduled_delivery_end_date** | **String** | The end date of the scheduled delivery window in the time zone of the order destination. In ISO 8601 date time format. | [optional] 
**price_designation** | **String** | Indicates that the selling price is a special price that is available only for Amazon Business orders. For more information about the Amazon Business Seller Program, see the [Amazon Business website](https://www.amazon.com/b2b/info/amazon-business).   Possible values: BusinessPrice - A special price that is available only for Amazon Business orders. | [optional] 
**tax_collection** | [**TaxCollection**](TaxCollection.md) | Information about withheld taxes. | [optional] 
**serial_number_required** | **BOOLEAN** | When true, the product type for this item has a serial number.  Returned only for Amazon Easy Ship orders. | [optional] 
**is_transparency** | **BOOLEAN** | When true, transparency codes are required. | [optional] 
**ioss_number** | **String** | The IOSS number for the marketplace. Sellers shipping to the European Union (EU) from outside of the EU must provide this IOSS number to their carrier when Amazon has collected the VAT on the sale. | [optional] 
**store_chain_store_id** | **String** | The store chain store identifier. Linked to a specific store in a store chain. | [optional] 
**deemed_reseller_category** | **String** | The category of deemed reseller. This applies to selling partners that are not based in the EU and is used to help them meet the VAT Deemed Reseller tax laws in the EU and UK. | [optional] 
**buyer_info** | [**ItemBuyerInfo**](ItemBuyerInfo.md) |  | [optional] 


