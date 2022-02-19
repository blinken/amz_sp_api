# AmzSpApi::FulfillmentOutboundApiModel::GetFeatureSkuResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**marketplace_id** | **String** | The requested marketplace. | 
**feature_name** | **String** | The name of the feature. | 
**is_eligible** | **BOOLEAN** | When true, the seller SKU is eligible for the requested feature. | 
**ineligible_reasons** | **Array&lt;String&gt;** | A list of one or more reasons that the seller SKU is ineligibile for the feature.  Possible values: * MERCHANT_NOT_ENROLLED - The merchant isn&#39;t enrolled for the feature. * SKU_NOT_ELIGIBLE - The SKU doesn&#39;t reside in a warehouse that supports the feature. * INVALID_SKU - There is an issue with the SKU provided. | [optional] 
**sku_info** | [**FeatureSku**](FeatureSku.md) | Information about the SKU, including the count available, identifiers, and a list of overlapping SKUs that share the same inventory pool. | [optional] 


