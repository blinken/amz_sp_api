# vendor-direct-fulfillment-orders-api-model

AmzSpApi::VendorDirectFulfillmentOrdersApiModel - the Ruby gem for the Selling Partner API for Direct Fulfillment Orders

The Selling Partner API for Direct Fulfillment Orders provides programmatic access to a direct fulfillment vendor's order data.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 0.1.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build vendor-direct-fulfillment-orders-api-model.gemspec
```

Then either install the gem locally:

```shell
gem install ./vendor-direct-fulfillment-orders-api-model-0.1.0.gem
```
(for development, run `gem install --dev ./vendor-direct-fulfillment-orders-api-model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'vendor-direct-fulfillment-orders-api-model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'vendor-direct-fulfillment-orders-api-model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'vendor-direct-fulfillment-orders-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentOrdersApiModel::VendorOrdersApi.new

purchase_order_number = 'purchase_order_number_example' # String | The order identifier for the purchase order that you want. Formatting Notes: alpha-numeric code.


begin
  result = api_instance.get_order(purchase_order_number)
  p result
rescue AmzSpApi::VendorDirectFulfillmentOrdersApiModel::ApiError => e
  puts "Exception when calling VendorOrdersApi->get_order: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::VendorDirectFulfillmentOrdersApiModel::VendorOrdersApi* | [**get_order**](docs/VendorOrdersApi.md#get_order) | **GET** /vendor/directFulfillment/orders/v1/purchaseOrders/{purchaseOrderNumber} | 
*AmzSpApi::VendorDirectFulfillmentOrdersApiModel::VendorOrdersApi* | [**get_orders**](docs/VendorOrdersApi.md#get_orders) | **GET** /vendor/directFulfillment/orders/v1/purchaseOrders | 
*AmzSpApi::VendorDirectFulfillmentOrdersApiModel::VendorOrdersApi* | [**submit_acknowledgement**](docs/VendorOrdersApi.md#submit_acknowledgement) | **POST** /vendor/directFulfillment/orders/v1/acknowledgements | 


## Documentation for Models

 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::AcknowledgementStatus](docs/AcknowledgementStatus.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::Address](docs/Address.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::Decimal](docs/Decimal.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::Error](docs/Error.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::GetOrderResponse](docs/GetOrderResponse.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::GetOrdersResponse](docs/GetOrdersResponse.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::GiftDetails](docs/GiftDetails.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::ItemQuantity](docs/ItemQuantity.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::Money](docs/Money.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::Order](docs/Order.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderAcknowledgementItem](docs/OrderAcknowledgementItem.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderDetails](docs/OrderDetails.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderDetailsTaxTotal](docs/OrderDetailsTaxTotal.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderItem](docs/OrderItem.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderItemAcknowledgement](docs/OrderItemAcknowledgement.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderItemTaxDetails](docs/OrderItemTaxDetails.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderList](docs/OrderList.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::Pagination](docs/Pagination.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::PartyIdentification](docs/PartyIdentification.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::ScheduledDeliveryShipment](docs/ScheduledDeliveryShipment.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::ShipmentDates](docs/ShipmentDates.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::ShipmentDetails](docs/ShipmentDetails.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::SubmitAcknowledgementRequest](docs/SubmitAcknowledgementRequest.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::SubmitAcknowledgementResponse](docs/SubmitAcknowledgementResponse.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::TaxDetails](docs/TaxDetails.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::TaxLineItem](docs/TaxLineItem.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::TaxRegistrationDetails](docs/TaxRegistrationDetails.md)
 - [AmzSpApi::VendorDirectFulfillmentOrdersApiModel::TransactionId](docs/TransactionId.md)


## Documentation for Authorization

 All endpoints do not require authorization.

