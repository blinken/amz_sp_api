# AmzSpApi::OrdersApiModel::ShipmentApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**update_shipment_status**](ShipmentApi.md#update_shipment_status) | **POST** /orders/v0/orders/{orderId}/shipment | 


# **update_shipment_status**
> update_shipment_status(order_id, payload)



Update the shipment status.

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::ShipmentApi.new

order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.

payload = AmzSpApi::OrdersApiModel::UpdateShipmentStatusRequest.new # UpdateShipmentStatusRequest | Request to update the shipment status.


begin
  api_instance.update_shipment_status(order_id, payload)
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling ShipmentApi->update_shipment_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| An Amazon-defined order identifier, in 3-7-7 format. | 
 **payload** | [**UpdateShipmentStatusRequest**](UpdateShipmentStatusRequest.md)| Request to update the shipment status. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



