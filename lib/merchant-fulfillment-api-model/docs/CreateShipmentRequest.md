# AmzSpApi::MerchantFulfillmentApiModel::CreateShipmentRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipment_request_details** | [**ShipmentRequestDetails**](ShipmentRequestDetails.md) | Shipment information required for creating a shipment. | 
**shipping_service_id** | [**ShippingServiceIdentifier**](ShippingServiceIdentifier.md) |  | 
**shipping_service_offer_id** | **String** | Identifies a shipping service order made by a carrier. | [optional] 
**hazmat_type** | [**HazmatType**](HazmatType.md) | Hazardous materials options for a package. Consult the terms and conditions for each carrier for more information about hazardous materials. | [optional] 
**label_format_option** | [**LabelFormatOptionRequest**](LabelFormatOptionRequest.md) |  | [optional] 
**shipment_level_seller_inputs_list** | [**AdditionalSellerInputsList**](AdditionalSellerInputsList.md) | A list of additional seller inputs required to ship this shipment. | [optional] 


