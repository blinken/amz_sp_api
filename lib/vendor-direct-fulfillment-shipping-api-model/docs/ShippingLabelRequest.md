# AmzSpApi::VendorDirectFulfillmentShippingApiModel::ShippingLabelRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purchase_order_number** | **String** | Purchase order number of the order for which to create a shipping label. | 
**selling_party** | [**PartyIdentification**](PartyIdentification.md) | ID of the selling party or vendor. | 
**ship_from_party** | [**PartyIdentification**](PartyIdentification.md) | Warehouse code of vendor. | 
**containers** | [**Array&lt;Container&gt;**](Container.md) | A list of the packages in this shipment. | [optional] 


