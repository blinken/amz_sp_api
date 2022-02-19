# AmzSpApi::VendorDirectFulfillmentShippingApiModel::ShipmentConfirmation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purchase_order_number** | **String** | Purchase order number corresponding to the shipment. | 
**shipment_details** | [**ShipmentDetails**](ShipmentDetails.md) | Shipment information. | 
**selling_party** | [**PartyIdentification**](PartyIdentification.md) | ID of the selling party or vendor. | 
**ship_from_party** | [**PartyIdentification**](PartyIdentification.md) | Warehouse code of vendor. | 
**items** | [**Array&lt;Item&gt;**](Item.md) | Provide the details of the items in this shipment. If any of the item details field is common at a package or a pallet level, then provide them at the corresponding package. | 
**containers** | [**Array&lt;Container&gt;**](Container.md) | Provide the details of the items in this shipment. If any of the item details field is common at a package or a pallet level, then provide them at the corresponding package. | [optional] 


