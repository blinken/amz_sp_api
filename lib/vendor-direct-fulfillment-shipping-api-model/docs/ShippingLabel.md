# AmzSpApi::VendorDirectFulfillmentShippingApiModel::ShippingLabel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purchase_order_number** | **String** | This field will contain the Purchase Order Number for this order. | 
**selling_party** | [**PartyIdentification**](PartyIdentification.md) | ID of the selling party or vendor. | 
**ship_from_party** | [**PartyIdentification**](PartyIdentification.md) | Warehouse code of vendor. | 
**label_format** | **String** | Format of the label. | 
**label_data** | [**Array&lt;LabelData&gt;**](LabelData.md) | Provides the details of the packages in this shipment. | 


