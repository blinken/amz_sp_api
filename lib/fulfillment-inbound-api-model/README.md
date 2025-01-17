# fulfillment-inbound-api-model

AmzSpApi::FulfillmentInboundApiModel - the Ruby gem for the Selling Partner API for Fulfillment Inbound

The Selling Partner API for Fulfillment Inbound lets you create applications that create and update inbound shipments of inventory to Amazon's fulfillment network.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v0
- Package version: 0.1.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build fulfillment-inbound-api-model.gemspec
```

Then either install the gem locally:

```shell
gem install ./fulfillment-inbound-api-model-0.1.0.gem
```
(for development, run `gem install --dev ./fulfillment-inbound-api-model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'fulfillment-inbound-api-model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'fulfillment-inbound-api-model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new

shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.

need_by_date = Date.parse('2013-10-20') # Date | Date that the shipment must arrive at the Amazon fulfillment center to avoid delivery promise breaks for pre-ordered items. Must be in YYYY-MM-DD format. The response to the getPreorderInfo operation returns this value.

marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace the shipment is tied to.


begin
  result = api_instance.confirm_preorder(shipment_id, need_by_date, marketplace_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->confirm_preorder: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**confirm_preorder**](docs/FbaInboundApi.md#confirm_preorder) | **PUT** /fba/inbound/v0/shipments/{shipmentId}/preorder/confirm | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**confirm_transport**](docs/FbaInboundApi.md#confirm_transport) | **POST** /fba/inbound/v0/shipments/{shipmentId}/transport/confirm | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**create_inbound_shipment**](docs/FbaInboundApi.md#create_inbound_shipment) | **POST** /fba/inbound/v0/shipments/{shipmentId} | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**create_inbound_shipment_plan**](docs/FbaInboundApi.md#create_inbound_shipment_plan) | **POST** /fba/inbound/v0/plans | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**estimate_transport**](docs/FbaInboundApi.md#estimate_transport) | **POST** /fba/inbound/v0/shipments/{shipmentId}/transport/estimate | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_bill_of_lading**](docs/FbaInboundApi.md#get_bill_of_lading) | **GET** /fba/inbound/v0/shipments/{shipmentId}/billOfLading | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_inbound_guidance**](docs/FbaInboundApi.md#get_inbound_guidance) | **GET** /fba/inbound/v0/itemsGuidance | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_labels**](docs/FbaInboundApi.md#get_labels) | **GET** /fba/inbound/v0/shipments/{shipmentId}/labels | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_preorder_info**](docs/FbaInboundApi.md#get_preorder_info) | **GET** /fba/inbound/v0/shipments/{shipmentId}/preorder | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_prep_instructions**](docs/FbaInboundApi.md#get_prep_instructions) | **GET** /fba/inbound/v0/prepInstructions | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_shipment_items**](docs/FbaInboundApi.md#get_shipment_items) | **GET** /fba/inbound/v0/shipmentItems | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_shipment_items_by_shipment_id**](docs/FbaInboundApi.md#get_shipment_items_by_shipment_id) | **GET** /fba/inbound/v0/shipments/{shipmentId}/items | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_shipments**](docs/FbaInboundApi.md#get_shipments) | **GET** /fba/inbound/v0/shipments | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_transport_details**](docs/FbaInboundApi.md#get_transport_details) | **GET** /fba/inbound/v0/shipments/{shipmentId}/transport | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**put_transport_details**](docs/FbaInboundApi.md#put_transport_details) | **PUT** /fba/inbound/v0/shipments/{shipmentId}/transport | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**update_inbound_shipment**](docs/FbaInboundApi.md#update_inbound_shipment) | **PUT** /fba/inbound/v0/shipments/{shipmentId} | 
*AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**void_transport**](docs/FbaInboundApi.md#void_transport) | **POST** /fba/inbound/v0/shipments/{shipmentId}/transport/void | 


## Documentation for Models

 - [AmzSpApi::FulfillmentInboundApiModel::ASINInboundGuidance](docs/ASINInboundGuidance.md)
 - [AmzSpApi::FulfillmentInboundApiModel::ASINInboundGuidanceList](docs/ASINInboundGuidanceList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::ASINPrepInstructions](docs/ASINPrepInstructions.md)
 - [AmzSpApi::FulfillmentInboundApiModel::ASINPrepInstructionsList](docs/ASINPrepInstructionsList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::Address](docs/Address.md)
 - [AmzSpApi::FulfillmentInboundApiModel::AmazonPrepFeesDetails](docs/AmazonPrepFeesDetails.md)
 - [AmzSpApi::FulfillmentInboundApiModel::AmazonPrepFeesDetailsList](docs/AmazonPrepFeesDetailsList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::Amount](docs/Amount.md)
 - [AmzSpApi::FulfillmentInboundApiModel::BarcodeInstruction](docs/BarcodeInstruction.md)
 - [AmzSpApi::FulfillmentInboundApiModel::BigDecimalType](docs/BigDecimalType.md)
 - [AmzSpApi::FulfillmentInboundApiModel::BillOfLadingDownloadURL](docs/BillOfLadingDownloadURL.md)
 - [AmzSpApi::FulfillmentInboundApiModel::BoxContentsFeeDetails](docs/BoxContentsFeeDetails.md)
 - [AmzSpApi::FulfillmentInboundApiModel::BoxContentsSource](docs/BoxContentsSource.md)
 - [AmzSpApi::FulfillmentInboundApiModel::CommonTransportResult](docs/CommonTransportResult.md)
 - [AmzSpApi::FulfillmentInboundApiModel::Condition](docs/Condition.md)
 - [AmzSpApi::FulfillmentInboundApiModel::ConfirmPreorderResponse](docs/ConfirmPreorderResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::ConfirmPreorderResult](docs/ConfirmPreorderResult.md)
 - [AmzSpApi::FulfillmentInboundApiModel::ConfirmTransportResponse](docs/ConfirmTransportResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::Contact](docs/Contact.md)
 - [AmzSpApi::FulfillmentInboundApiModel::CreateInboundShipmentPlanRequest](docs/CreateInboundShipmentPlanRequest.md)
 - [AmzSpApi::FulfillmentInboundApiModel::CreateInboundShipmentPlanResponse](docs/CreateInboundShipmentPlanResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::CreateInboundShipmentPlanResult](docs/CreateInboundShipmentPlanResult.md)
 - [AmzSpApi::FulfillmentInboundApiModel::CurrencyCode](docs/CurrencyCode.md)
 - [AmzSpApi::FulfillmentInboundApiModel::DateStringType](docs/DateStringType.md)
 - [AmzSpApi::FulfillmentInboundApiModel::Dimensions](docs/Dimensions.md)
 - [AmzSpApi::FulfillmentInboundApiModel::Error](docs/Error.md)
 - [AmzSpApi::FulfillmentInboundApiModel::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::ErrorReason](docs/ErrorReason.md)
 - [AmzSpApi::FulfillmentInboundApiModel::EstimateTransportResponse](docs/EstimateTransportResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetBillOfLadingResponse](docs/GetBillOfLadingResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetInboundGuidanceResponse](docs/GetInboundGuidanceResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetInboundGuidanceResult](docs/GetInboundGuidanceResult.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetLabelsResponse](docs/GetLabelsResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetPreorderInfoResponse](docs/GetPreorderInfoResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetPreorderInfoResult](docs/GetPreorderInfoResult.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetPrepInstructionsResponse](docs/GetPrepInstructionsResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetPrepInstructionsResult](docs/GetPrepInstructionsResult.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetShipmentItemsResponse](docs/GetShipmentItemsResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetShipmentItemsResult](docs/GetShipmentItemsResult.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetShipmentsResponse](docs/GetShipmentsResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetShipmentsResult](docs/GetShipmentsResult.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetTransportDetailsResponse](docs/GetTransportDetailsResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GetTransportDetailsResult](docs/GetTransportDetailsResult.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GuidanceReason](docs/GuidanceReason.md)
 - [AmzSpApi::FulfillmentInboundApiModel::GuidanceReasonList](docs/GuidanceReasonList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundGuidance](docs/InboundGuidance.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentHeader](docs/InboundShipmentHeader.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentInfo](docs/InboundShipmentInfo.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentItem](docs/InboundShipmentItem.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentItemList](docs/InboundShipmentItemList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentList](docs/InboundShipmentList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentPlan](docs/InboundShipmentPlan.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentPlanItem](docs/InboundShipmentPlanItem.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentPlanItemList](docs/InboundShipmentPlanItemList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentPlanList](docs/InboundShipmentPlanList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentPlanRequestItem](docs/InboundShipmentPlanRequestItem.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentPlanRequestItemList](docs/InboundShipmentPlanRequestItemList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentRequest](docs/InboundShipmentRequest.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentResponse](docs/InboundShipmentResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InboundShipmentResult](docs/InboundShipmentResult.md)
 - [AmzSpApi::FulfillmentInboundApiModel::IntendedBoxContentsSource](docs/IntendedBoxContentsSource.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InvalidASIN](docs/InvalidASIN.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InvalidASINList](docs/InvalidASINList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InvalidSKU](docs/InvalidSKU.md)
 - [AmzSpApi::FulfillmentInboundApiModel::InvalidSKUList](docs/InvalidSKUList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::LabelDownloadURL](docs/LabelDownloadURL.md)
 - [AmzSpApi::FulfillmentInboundApiModel::LabelPrepPreference](docs/LabelPrepPreference.md)
 - [AmzSpApi::FulfillmentInboundApiModel::LabelPrepType](docs/LabelPrepType.md)
 - [AmzSpApi::FulfillmentInboundApiModel::NonPartneredLtlDataInput](docs/NonPartneredLtlDataInput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::NonPartneredLtlDataOutput](docs/NonPartneredLtlDataOutput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelDataInput](docs/NonPartneredSmallParcelDataInput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelDataOutput](docs/NonPartneredSmallParcelDataOutput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelPackageInput](docs/NonPartneredSmallParcelPackageInput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelPackageInputList](docs/NonPartneredSmallParcelPackageInputList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelPackageOutput](docs/NonPartneredSmallParcelPackageOutput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelPackageOutputList](docs/NonPartneredSmallParcelPackageOutputList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PackageStatus](docs/PackageStatus.md)
 - [AmzSpApi::FulfillmentInboundApiModel::Pallet](docs/Pallet.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PalletList](docs/PalletList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PartneredEstimate](docs/PartneredEstimate.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PartneredLtlDataInput](docs/PartneredLtlDataInput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PartneredLtlDataOutput](docs/PartneredLtlDataOutput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PartneredSmallParcelDataInput](docs/PartneredSmallParcelDataInput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PartneredSmallParcelDataOutput](docs/PartneredSmallParcelDataOutput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PartneredSmallParcelPackageInput](docs/PartneredSmallParcelPackageInput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PartneredSmallParcelPackageInputList](docs/PartneredSmallParcelPackageInputList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PartneredSmallParcelPackageOutput](docs/PartneredSmallParcelPackageOutput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PartneredSmallParcelPackageOutputList](docs/PartneredSmallParcelPackageOutputList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PrepDetails](docs/PrepDetails.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PrepDetailsList](docs/PrepDetailsList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PrepGuidance](docs/PrepGuidance.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PrepInstruction](docs/PrepInstruction.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PrepInstructionList](docs/PrepInstructionList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PrepOwner](docs/PrepOwner.md)
 - [AmzSpApi::FulfillmentInboundApiModel::ProNumber](docs/ProNumber.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PutTransportDetailsRequest](docs/PutTransportDetailsRequest.md)
 - [AmzSpApi::FulfillmentInboundApiModel::PutTransportDetailsResponse](docs/PutTransportDetailsResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::Quantity](docs/Quantity.md)
 - [AmzSpApi::FulfillmentInboundApiModel::SKUInboundGuidance](docs/SKUInboundGuidance.md)
 - [AmzSpApi::FulfillmentInboundApiModel::SKUInboundGuidanceList](docs/SKUInboundGuidanceList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::SKUPrepInstructions](docs/SKUPrepInstructions.md)
 - [AmzSpApi::FulfillmentInboundApiModel::SKUPrepInstructionsList](docs/SKUPrepInstructionsList.md)
 - [AmzSpApi::FulfillmentInboundApiModel::SellerFreightClass](docs/SellerFreightClass.md)
 - [AmzSpApi::FulfillmentInboundApiModel::ShipmentStatus](docs/ShipmentStatus.md)
 - [AmzSpApi::FulfillmentInboundApiModel::ShipmentType](docs/ShipmentType.md)
 - [AmzSpApi::FulfillmentInboundApiModel::TimeStampStringType](docs/TimeStampStringType.md)
 - [AmzSpApi::FulfillmentInboundApiModel::TrackingId](docs/TrackingId.md)
 - [AmzSpApi::FulfillmentInboundApiModel::TransportContent](docs/TransportContent.md)
 - [AmzSpApi::FulfillmentInboundApiModel::TransportDetailInput](docs/TransportDetailInput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::TransportDetailOutput](docs/TransportDetailOutput.md)
 - [AmzSpApi::FulfillmentInboundApiModel::TransportHeader](docs/TransportHeader.md)
 - [AmzSpApi::FulfillmentInboundApiModel::TransportResult](docs/TransportResult.md)
 - [AmzSpApi::FulfillmentInboundApiModel::TransportStatus](docs/TransportStatus.md)
 - [AmzSpApi::FulfillmentInboundApiModel::UnitOfMeasurement](docs/UnitOfMeasurement.md)
 - [AmzSpApi::FulfillmentInboundApiModel::UnitOfWeight](docs/UnitOfWeight.md)
 - [AmzSpApi::FulfillmentInboundApiModel::UnsignedIntType](docs/UnsignedIntType.md)
 - [AmzSpApi::FulfillmentInboundApiModel::VoidTransportResponse](docs/VoidTransportResponse.md)
 - [AmzSpApi::FulfillmentInboundApiModel::Weight](docs/Weight.md)


## Documentation for Authorization

 All endpoints do not require authorization.

