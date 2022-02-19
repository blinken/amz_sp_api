# AmzSpApi::FulfillmentOutboundApiModel::FulfillmentOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seller_fulfillment_order_id** | **String** | The fulfillment order identifier submitted with the createFulfillmentOrder operation. | 
**marketplace_id** | **String** | The identifier for the marketplace the fulfillment order is placed against. | 
**displayable_order_id** | **String** | A fulfillment order identifier submitted with the createFulfillmentOrder operation. Displays as the order identifier in recipient-facing materials such as the packing slip. | 
**displayable_order_date** | [**Timestamp**](Timestamp.md) | A date and time submitted with the createFulfillmentOrder operation. Displays as the order date in recipient-facing materials such as the packing slip. | 
**displayable_order_comment** | **String** | A text block submitted with the createFulfillmentOrder operation. Displays in recipient-facing materials such as the packing slip. | 
**shipping_speed_category** | [**ShippingSpeedCategory**](ShippingSpeedCategory.md) |  | 
**delivery_window** | [**DeliveryWindow**](DeliveryWindow.md) |  | [optional] 
**destination_address** | [**Address**](Address.md) | The destination address submitted with the createFulfillmentOrder operation. | 
**fulfillment_action** | [**FulfillmentAction**](FulfillmentAction.md) |  | [optional] 
**fulfillment_policy** | [**FulfillmentPolicy**](FulfillmentPolicy.md) |  | [optional] 
**cod_settings** | [**CODSettings**](CODSettings.md) |  | [optional] 
**received_date** | [**Timestamp**](Timestamp.md) | The date and time that the fulfillment order was received by an Amazon fulfillment center. | 
**fulfillment_order_status** | [**FulfillmentOrderStatus**](FulfillmentOrderStatus.md) |  | 
**status_updated_date** | [**Timestamp**](Timestamp.md) | The date and time that the status of the fulfillment order last changed, in ISO 8601 date time format. | 
**notification_emails** | [**NotificationEmailList**](NotificationEmailList.md) |  | [optional] 
**feature_constraints** | [**Array&lt;FeatureSettings&gt;**](FeatureSettings.md) | A list of features and their fulfillment policies to apply to the order. | [optional] 


