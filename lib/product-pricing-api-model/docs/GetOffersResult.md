# AmzSpApi::ProductPricingApiModel::GetOffersResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**marketplace_id** | **String** | A marketplace identifier. | 
**asin** | **String** | The Amazon Standard Identification Number (ASIN) of the item. | [optional] 
**sku** | **String** | The stock keeping unit (SKU) of the item. | [optional] 
**item_condition** | [**ConditionType**](ConditionType.md) | The condition of the item. | 
**status** | **String** | The status of the operation. | 
**identifier** | [**ItemIdentifier**](ItemIdentifier.md) | Metadata that identifies the item. | 
**summary** | [**Summary**](Summary.md) | Pricing information about the item. | 
**offers** | [**OfferDetailList**](OfferDetailList.md) | A list of offer details. The list is the same length as the TotalOfferCount in the Summary or 20, whichever is less. | 


