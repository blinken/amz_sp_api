# AmzSpApi::FulfillmentInboundApiModel::PartneredLtlDataInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact** | [**Contact**](Contact.md) | Contact information for the person in the seller&#39;s organization who is responsible for the shipment. Used by the carrier if they have questions about the shipment. | [optional] 
**box_count** | [**UnsignedIntType**](UnsignedIntType.md) | The number of boxes in the shipment. | [optional] 
**seller_freight_class** | [**SellerFreightClass**](SellerFreightClass.md) |  | [optional] 
**freight_ready_date** | [**DateStringType**](DateStringType.md) | The date that the shipment will be ready to be picked up by the carrier. | [optional] 
**pallet_list** | [**PalletList**](PalletList.md) |  | [optional] 
**total_weight** | [**Weight**](Weight.md) | The total weight of the shipment. | [optional] 
**seller_declared_value** | [**Amount**](Amount.md) | The declaration of the total value of the inventory in the shipment. | [optional] 


