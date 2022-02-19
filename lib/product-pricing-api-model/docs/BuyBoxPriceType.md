# AmzSpApi::ProductPricingApiModel::BuyBoxPriceType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**condition** | **String** | Indicates the condition of the item. For example: New, Used, Collectible, Refurbished, or Club. | 
**offer_type** | [**OfferCustomerType**](OfferCustomerType.md) | Indicates the type of customer that the offer is valid for.&lt;br&gt;&lt;br&gt;When the offer type is B2C in a quantity discount, the seller is winning the Buy Box because others do not have inventory at that quantity, not because they have a quantity discount on the ASIN. | [optional] 
**quantity_tier** | **Integer** | Indicates at what quantity this price becomes active. | [optional] 
**quantity_discount_type** | [**QuantityDiscountType**](QuantityDiscountType.md) | Indicates the type of quantity discount this price applies to. | [optional] 
**landed_price** | [**MoneyType**](MoneyType.md) | The value calculated by adding ListingPrice + Shipping - Points. | 
**listing_price** | [**MoneyType**](MoneyType.md) | The price of the item. | 
**shipping** | [**MoneyType**](MoneyType.md) | The shipping cost. | 
**points** | [**Points**](Points.md) | The number of Amazon Points offered with the purchase of an item. | [optional] 
**seller_id** | **String** | The seller identifier for the offer. | [optional] 


