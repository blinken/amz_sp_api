# shipping-api-model

AmzSpApi::ShippingApiModel - the Ruby gem for the Selling Partner API for Shipping

Provides programmatic access to Amazon Shipping APIs.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 0.1.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build shipping-api-model.gemspec
```

Then either install the gem locally:

```shell
gem install ./shipping-api-model-0.1.0.gem
```
(for development, run `gem install --dev ./shipping-api-model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'shipping-api-model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'shipping-api-model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new

shipment_id = 'shipment_id_example' # String | 


begin
  result = api_instance.cancel_shipment(shipment_id)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->cancel_shipment: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::ShippingApiModel::ShippingApi* | [**cancel_shipment**](docs/ShippingApi.md#cancel_shipment) | **POST** /shipping/v1/shipments/{shipmentId}/cancel | 
*AmzSpApi::ShippingApiModel::ShippingApi* | [**create_shipment**](docs/ShippingApi.md#create_shipment) | **POST** /shipping/v1/shipments | 
*AmzSpApi::ShippingApiModel::ShippingApi* | [**get_account**](docs/ShippingApi.md#get_account) | **GET** /shipping/v1/account | 
*AmzSpApi::ShippingApiModel::ShippingApi* | [**get_rates**](docs/ShippingApi.md#get_rates) | **POST** /shipping/v1/rates | 
*AmzSpApi::ShippingApiModel::ShippingApi* | [**get_shipment**](docs/ShippingApi.md#get_shipment) | **GET** /shipping/v1/shipments/{shipmentId} | 
*AmzSpApi::ShippingApiModel::ShippingApi* | [**get_tracking_information**](docs/ShippingApi.md#get_tracking_information) | **GET** /shipping/v1/tracking/{trackingId} | 
*AmzSpApi::ShippingApiModel::ShippingApi* | [**purchase_labels**](docs/ShippingApi.md#purchase_labels) | **POST** /shipping/v1/shipments/{shipmentId}/purchaseLabels | 
*AmzSpApi::ShippingApiModel::ShippingApi* | [**purchase_shipment**](docs/ShippingApi.md#purchase_shipment) | **POST** /shipping/v1/purchaseShipment | 
*AmzSpApi::ShippingApiModel::ShippingApi* | [**retrieve_shipping_label**](docs/ShippingApi.md#retrieve_shipping_label) | **POST** /shipping/v1/shipments/{shipmentId}/containers/{trackingId}/label | 


## Documentation for Models

 - [AmzSpApi::ShippingApiModel::AcceptedRate](docs/AcceptedRate.md)
 - [AmzSpApi::ShippingApiModel::Account](docs/Account.md)
 - [AmzSpApi::ShippingApiModel::AccountId](docs/AccountId.md)
 - [AmzSpApi::ShippingApiModel::Address](docs/Address.md)
 - [AmzSpApi::ShippingApiModel::CancelShipmentResponse](docs/CancelShipmentResponse.md)
 - [AmzSpApi::ShippingApiModel::City](docs/City.md)
 - [AmzSpApi::ShippingApiModel::ClientReferenceId](docs/ClientReferenceId.md)
 - [AmzSpApi::ShippingApiModel::Container](docs/Container.md)
 - [AmzSpApi::ShippingApiModel::ContainerItem](docs/ContainerItem.md)
 - [AmzSpApi::ShippingApiModel::ContainerList](docs/ContainerList.md)
 - [AmzSpApi::ShippingApiModel::ContainerReferenceId](docs/ContainerReferenceId.md)
 - [AmzSpApi::ShippingApiModel::ContainerSpecification](docs/ContainerSpecification.md)
 - [AmzSpApi::ShippingApiModel::ContainerSpecificationList](docs/ContainerSpecificationList.md)
 - [AmzSpApi::ShippingApiModel::CountryCode](docs/CountryCode.md)
 - [AmzSpApi::ShippingApiModel::CreateShipmentRequest](docs/CreateShipmentRequest.md)
 - [AmzSpApi::ShippingApiModel::CreateShipmentResponse](docs/CreateShipmentResponse.md)
 - [AmzSpApi::ShippingApiModel::CreateShipmentResult](docs/CreateShipmentResult.md)
 - [AmzSpApi::ShippingApiModel::Currency](docs/Currency.md)
 - [AmzSpApi::ShippingApiModel::Dimensions](docs/Dimensions.md)
 - [AmzSpApi::ShippingApiModel::Error](docs/Error.md)
 - [AmzSpApi::ShippingApiModel::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::ShippingApiModel::Event](docs/Event.md)
 - [AmzSpApi::ShippingApiModel::EventCode](docs/EventCode.md)
 - [AmzSpApi::ShippingApiModel::EventList](docs/EventList.md)
 - [AmzSpApi::ShippingApiModel::GetAccountResponse](docs/GetAccountResponse.md)
 - [AmzSpApi::ShippingApiModel::GetRatesRequest](docs/GetRatesRequest.md)
 - [AmzSpApi::ShippingApiModel::GetRatesResponse](docs/GetRatesResponse.md)
 - [AmzSpApi::ShippingApiModel::GetRatesResult](docs/GetRatesResult.md)
 - [AmzSpApi::ShippingApiModel::GetShipmentResponse](docs/GetShipmentResponse.md)
 - [AmzSpApi::ShippingApiModel::GetTrackingInformationResponse](docs/GetTrackingInformationResponse.md)
 - [AmzSpApi::ShippingApiModel::Label](docs/Label.md)
 - [AmzSpApi::ShippingApiModel::LabelResult](docs/LabelResult.md)
 - [AmzSpApi::ShippingApiModel::LabelResultList](docs/LabelResultList.md)
 - [AmzSpApi::ShippingApiModel::LabelSpecification](docs/LabelSpecification.md)
 - [AmzSpApi::ShippingApiModel::LabelStream](docs/LabelStream.md)
 - [AmzSpApi::ShippingApiModel::Location](docs/Location.md)
 - [AmzSpApi::ShippingApiModel::Party](docs/Party.md)
 - [AmzSpApi::ShippingApiModel::PostalCode](docs/PostalCode.md)
 - [AmzSpApi::ShippingApiModel::PromisedDeliveryDate](docs/PromisedDeliveryDate.md)
 - [AmzSpApi::ShippingApiModel::PurchaseLabelsRequest](docs/PurchaseLabelsRequest.md)
 - [AmzSpApi::ShippingApiModel::PurchaseLabelsResponse](docs/PurchaseLabelsResponse.md)
 - [AmzSpApi::ShippingApiModel::PurchaseLabelsResult](docs/PurchaseLabelsResult.md)
 - [AmzSpApi::ShippingApiModel::PurchaseShipmentRequest](docs/PurchaseShipmentRequest.md)
 - [AmzSpApi::ShippingApiModel::PurchaseShipmentResponse](docs/PurchaseShipmentResponse.md)
 - [AmzSpApi::ShippingApiModel::PurchaseShipmentResult](docs/PurchaseShipmentResult.md)
 - [AmzSpApi::ShippingApiModel::Rate](docs/Rate.md)
 - [AmzSpApi::ShippingApiModel::RateId](docs/RateId.md)
 - [AmzSpApi::ShippingApiModel::RateList](docs/RateList.md)
 - [AmzSpApi::ShippingApiModel::RetrieveShippingLabelRequest](docs/RetrieveShippingLabelRequest.md)
 - [AmzSpApi::ShippingApiModel::RetrieveShippingLabelResponse](docs/RetrieveShippingLabelResponse.md)
 - [AmzSpApi::ShippingApiModel::RetrieveShippingLabelResult](docs/RetrieveShippingLabelResult.md)
 - [AmzSpApi::ShippingApiModel::ServiceRate](docs/ServiceRate.md)
 - [AmzSpApi::ShippingApiModel::ServiceRateList](docs/ServiceRateList.md)
 - [AmzSpApi::ShippingApiModel::ServiceType](docs/ServiceType.md)
 - [AmzSpApi::ShippingApiModel::ServiceTypeList](docs/ServiceTypeList.md)
 - [AmzSpApi::ShippingApiModel::Shipment](docs/Shipment.md)
 - [AmzSpApi::ShippingApiModel::ShipmentId](docs/ShipmentId.md)
 - [AmzSpApi::ShippingApiModel::ShippingPromiseSet](docs/ShippingPromiseSet.md)
 - [AmzSpApi::ShippingApiModel::StateOrRegion](docs/StateOrRegion.md)
 - [AmzSpApi::ShippingApiModel::TimeRange](docs/TimeRange.md)
 - [AmzSpApi::ShippingApiModel::TrackingId](docs/TrackingId.md)
 - [AmzSpApi::ShippingApiModel::TrackingInformation](docs/TrackingInformation.md)
 - [AmzSpApi::ShippingApiModel::TrackingSummary](docs/TrackingSummary.md)
 - [AmzSpApi::ShippingApiModel::Weight](docs/Weight.md)


## Documentation for Authorization

 All endpoints do not require authorization.

