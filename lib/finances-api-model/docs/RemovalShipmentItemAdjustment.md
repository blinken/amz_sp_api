# AmzSpApi::FinancesApiModel::RemovalShipmentItemAdjustment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**removal_shipment_item_id** | **String** | An identifier for an item in a removal shipment. | [optional] 
**tax_collection_model** | **String** | The tax collection model applied to the item.  Possible values:  * MarketplaceFacilitator - Tax is withheld and remitted to the taxing authority by Amazon on behalf of the seller.  * Standard - Tax is paid to the seller and not remitted to the taxing authority by Amazon. | [optional] 
**fulfillment_network_sku** | **String** | The Amazon fulfillment network SKU for the item. | [optional] 
**adjusted_quantity** | **Integer** | Adjusted quantity of removal shipmentItemAdjustment items. | [optional] 
**revenue_adjustment** | [**Currency**](Currency.md) | The total amount adjusted for disputed items. | [optional] 
**tax_amount_adjustment** | [**Currency**](Currency.md) | Adjustment on the Tax collected amount on the adjusted revenue. | [optional] 
**tax_withheld_adjustment** | [**Currency**](Currency.md) | Adjustment the tax withheld and remitted to the taxing authority by Amazon on behalf of the seller. If TaxCollectionModel&#x3D;MarketplaceFacilitator, then TaxWithheld&#x3D;TaxAmount (except the TaxWithheld amount is a negative number). Otherwise TaxWithheld&#x3D;0. | [optional] 


