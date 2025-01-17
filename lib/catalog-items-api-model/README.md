# catalog-items-api-model

AmzSpApi::CatalogItemsApiModel - the Ruby gem for the Selling Partner API for Catalog Items

The Selling Partner API for Catalog Items helps you programmatically retrieve item details for items in the catalog.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v0
- Package version: 0.1.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build catalog-items-api-model.gemspec
```

Then either install the gem locally:

```shell
gem install ./catalog-items-api-model-0.1.0.gem
```
(for development, run `gem install --dev ./catalog-items-api-model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'catalog-items-api-model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'catalog-items-api-model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'catalog-items-api-model'

api_instance = AmzSpApi::CatalogItemsApiModel::CatalogApi.new

marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace for the item.

asin = 'asin_example' # String | The Amazon Standard Identification Number (ASIN) of the item.


begin
  result = api_instance.get_catalog_item(marketplace_id, asin)
  p result
rescue AmzSpApi::CatalogItemsApiModel::ApiError => e
  puts "Exception when calling CatalogApi->get_catalog_item: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::CatalogItemsApiModel::CatalogApi* | [**get_catalog_item**](docs/CatalogApi.md#get_catalog_item) | **GET** /catalog/v0/items/{asin} | 
*AmzSpApi::CatalogItemsApiModel::CatalogApi* | [**list_catalog_categories**](docs/CatalogApi.md#list_catalog_categories) | **GET** /catalog/v0/categories | 
*AmzSpApi::CatalogItemsApiModel::CatalogApi* | [**list_catalog_items**](docs/CatalogApi.md#list_catalog_items) | **GET** /catalog/v0/items | 


## Documentation for Models

 - [AmzSpApi::CatalogItemsApiModel::ASINIdentifier](docs/ASINIdentifier.md)
 - [AmzSpApi::CatalogItemsApiModel::AttributeSetList](docs/AttributeSetList.md)
 - [AmzSpApi::CatalogItemsApiModel::AttributeSetListType](docs/AttributeSetListType.md)
 - [AmzSpApi::CatalogItemsApiModel::Categories](docs/Categories.md)
 - [AmzSpApi::CatalogItemsApiModel::CreatorType](docs/CreatorType.md)
 - [AmzSpApi::CatalogItemsApiModel::DecimalWithUnits](docs/DecimalWithUnits.md)
 - [AmzSpApi::CatalogItemsApiModel::DimensionType](docs/DimensionType.md)
 - [AmzSpApi::CatalogItemsApiModel::Error](docs/Error.md)
 - [AmzSpApi::CatalogItemsApiModel::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::CatalogItemsApiModel::GetCatalogItemResponse](docs/GetCatalogItemResponse.md)
 - [AmzSpApi::CatalogItemsApiModel::IdentifierType](docs/IdentifierType.md)
 - [AmzSpApi::CatalogItemsApiModel::Image](docs/Image.md)
 - [AmzSpApi::CatalogItemsApiModel::Item](docs/Item.md)
 - [AmzSpApi::CatalogItemsApiModel::ItemList](docs/ItemList.md)
 - [AmzSpApi::CatalogItemsApiModel::LanguageType](docs/LanguageType.md)
 - [AmzSpApi::CatalogItemsApiModel::ListCatalogCategoriesResponse](docs/ListCatalogCategoriesResponse.md)
 - [AmzSpApi::CatalogItemsApiModel::ListCatalogItemsResponse](docs/ListCatalogItemsResponse.md)
 - [AmzSpApi::CatalogItemsApiModel::ListMatchingItemsResponse](docs/ListMatchingItemsResponse.md)
 - [AmzSpApi::CatalogItemsApiModel::ListOfCategories](docs/ListOfCategories.md)
 - [AmzSpApi::CatalogItemsApiModel::Price](docs/Price.md)
 - [AmzSpApi::CatalogItemsApiModel::RelationshipList](docs/RelationshipList.md)
 - [AmzSpApi::CatalogItemsApiModel::RelationshipType](docs/RelationshipType.md)
 - [AmzSpApi::CatalogItemsApiModel::SalesRankList](docs/SalesRankList.md)
 - [AmzSpApi::CatalogItemsApiModel::SalesRankType](docs/SalesRankType.md)
 - [AmzSpApi::CatalogItemsApiModel::SellerSKUIdentifier](docs/SellerSKUIdentifier.md)


## Documentation for Authorization

 All endpoints do not require authorization.

