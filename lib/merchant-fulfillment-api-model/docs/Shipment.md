# AmzSpApi::MerchantFulfillmentApiModel::Shipment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipment_id** | [**ShipmentId**](ShipmentId.md) |  | 
**amazon_order_id** | [**AmazonOrderId**](AmazonOrderId.md) |  | 
**seller_order_id** | [**SellerOrderId**](SellerOrderId.md) |  | [optional] 
**item_list** | [**ItemList**](ItemList.md) |  | 
**ship_from_address** | [**Address**](Address.md) | The address of the sender. | 
**ship_to_address** | [**Address**](Address.md) | The destination address for the shipment. | 
**package_dimensions** | [**PackageDimensions**](PackageDimensions.md) |  | 
**weight** | [**Weight**](Weight.md) | The package weight. | 
**insurance** | [**CurrencyAmount**](CurrencyAmount.md) | If DeclaredValue was specified in a previous call to the createShipment operation, then Insurance indicates the amount that the carrier will use to insure the shipment. If DeclaredValue was not specified with a previous call to the createShipment operation, then the shipment will be insured for the carrier&#39;s minimum insurance amount, or the combined sale prices that the items are listed for in the shipment, whichever is less. | 
**shipping_service** | [**ShippingService**](ShippingService.md) |  | 
**label** | [**Label**](Label.md) | Data for creating a shipping label and dimensions for printing the label. If the shipment is canceled, an empty Label is returned. | 
**status** | [**ShipmentStatus**](ShipmentStatus.md) | The shipment status. | 
**tracking_id** | [**TrackingId**](TrackingId.md) |  | [optional] 
**created_date** | [**Timestamp**](Timestamp.md) | The date and time the shipment was created. | 
**last_updated_date** | [**Timestamp**](Timestamp.md) | The date and time of the last update. | [optional] 


