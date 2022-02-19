# vendor-invoices-api-model

AmzSpApi::VendorInvoicesApiModel - the Ruby gem for the Selling Partner API for Retail Procurement Payments

The Selling Partner API for Retail Procurement Payments provides programmatic access to vendors payments data.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 0.1.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build vendor-invoices-api-model.gemspec
```

Then either install the gem locally:

```shell
gem install ./vendor-invoices-api-model-0.1.0.gem
```
(for development, run `gem install --dev ./vendor-invoices-api-model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'vendor-invoices-api-model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'vendor-invoices-api-model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'vendor-invoices-api-model'

api_instance = AmzSpApi::VendorInvoicesApiModel::VendorPaymentsApi.new

body = AmzSpApi::VendorInvoicesApiModel::SubmitInvoicesRequest.new # SubmitInvoicesRequest | 


begin
  result = api_instance.submit_invoices(body)
  p result
rescue AmzSpApi::VendorInvoicesApiModel::ApiError => e
  puts "Exception when calling VendorPaymentsApi->submit_invoices: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::VendorInvoicesApiModel::VendorPaymentsApi* | [**submit_invoices**](docs/VendorPaymentsApi.md#submit_invoices) | **POST** /vendor/payments/v1/invoices | 


## Documentation for Models

 - [AmzSpApi::VendorInvoicesApiModel::AdditionalDetails](docs/AdditionalDetails.md)
 - [AmzSpApi::VendorInvoicesApiModel::Address](docs/Address.md)
 - [AmzSpApi::VendorInvoicesApiModel::AllowanceDetails](docs/AllowanceDetails.md)
 - [AmzSpApi::VendorInvoicesApiModel::ChargeDetails](docs/ChargeDetails.md)
 - [AmzSpApi::VendorInvoicesApiModel::CreditNoteDetails](docs/CreditNoteDetails.md)
 - [AmzSpApi::VendorInvoicesApiModel::DateTime](docs/DateTime.md)
 - [AmzSpApi::VendorInvoicesApiModel::Decimal](docs/Decimal.md)
 - [AmzSpApi::VendorInvoicesApiModel::Error](docs/Error.md)
 - [AmzSpApi::VendorInvoicesApiModel::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::VendorInvoicesApiModel::Invoice](docs/Invoice.md)
 - [AmzSpApi::VendorInvoicesApiModel::InvoiceItem](docs/InvoiceItem.md)
 - [AmzSpApi::VendorInvoicesApiModel::ItemQuantity](docs/ItemQuantity.md)
 - [AmzSpApi::VendorInvoicesApiModel::Money](docs/Money.md)
 - [AmzSpApi::VendorInvoicesApiModel::PartyIdentification](docs/PartyIdentification.md)
 - [AmzSpApi::VendorInvoicesApiModel::PaymentTerms](docs/PaymentTerms.md)
 - [AmzSpApi::VendorInvoicesApiModel::SubmitInvoicesRequest](docs/SubmitInvoicesRequest.md)
 - [AmzSpApi::VendorInvoicesApiModel::SubmitInvoicesResponse](docs/SubmitInvoicesResponse.md)
 - [AmzSpApi::VendorInvoicesApiModel::TaxDetails](docs/TaxDetails.md)
 - [AmzSpApi::VendorInvoicesApiModel::TaxRegistrationDetails](docs/TaxRegistrationDetails.md)
 - [AmzSpApi::VendorInvoicesApiModel::TransactionId](docs/TransactionId.md)


## Documentation for Authorization

 All endpoints do not require authorization.
