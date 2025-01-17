# feeds-api-model

AmzSpApi::FeedsApiModel - the Ruby gem for the Selling Partner API for Feeds

The Selling Partner API for Feeds lets you upload data to Amazon on behalf of a selling partner.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2021-06-30
- Package version: 0.1.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build feeds-api-model.gemspec
```

Then either install the gem locally:

```shell
gem install ./feeds-api-model-0.1.0.gem
```
(for development, run `gem install --dev ./feeds-api-model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'feeds-api-model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'feeds-api-model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'feeds-api-model'

api_instance = AmzSpApi::FeedsApiModel::FeedsApi.new

feed_id = 'feed_id_example' # String | The identifier for the feed. This identifier is unique only in combination with a seller ID.


begin
  api_instance.cancel_feed(feed_id)
rescue AmzSpApi::FeedsApiModel::ApiError => e
  puts "Exception when calling FeedsApi->cancel_feed: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::FeedsApiModel::FeedsApi* | [**cancel_feed**](docs/FeedsApi.md#cancel_feed) | **DELETE** /feeds/2021-06-30/feeds/{feedId} | 
*AmzSpApi::FeedsApiModel::FeedsApi* | [**create_feed**](docs/FeedsApi.md#create_feed) | **POST** /feeds/2021-06-30/feeds | 
*AmzSpApi::FeedsApiModel::FeedsApi* | [**create_feed_document**](docs/FeedsApi.md#create_feed_document) | **POST** /feeds/2021-06-30/documents | 
*AmzSpApi::FeedsApiModel::FeedsApi* | [**get_feed**](docs/FeedsApi.md#get_feed) | **GET** /feeds/2021-06-30/feeds/{feedId} | 
*AmzSpApi::FeedsApiModel::FeedsApi* | [**get_feed_document**](docs/FeedsApi.md#get_feed_document) | **GET** /feeds/2021-06-30/documents/{feedDocumentId} | 
*AmzSpApi::FeedsApiModel::FeedsApi* | [**get_feeds**](docs/FeedsApi.md#get_feeds) | **GET** /feeds/2021-06-30/feeds | 


## Documentation for Models

 - [AmzSpApi::FeedsApiModel::CreateFeedDocumentResponse](docs/CreateFeedDocumentResponse.md)
 - [AmzSpApi::FeedsApiModel::CreateFeedDocumentSpecification](docs/CreateFeedDocumentSpecification.md)
 - [AmzSpApi::FeedsApiModel::CreateFeedResponse](docs/CreateFeedResponse.md)
 - [AmzSpApi::FeedsApiModel::CreateFeedSpecification](docs/CreateFeedSpecification.md)
 - [AmzSpApi::FeedsApiModel::Error](docs/Error.md)
 - [AmzSpApi::FeedsApiModel::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::FeedsApiModel::Feed](docs/Feed.md)
 - [AmzSpApi::FeedsApiModel::FeedDocument](docs/FeedDocument.md)
 - [AmzSpApi::FeedsApiModel::FeedList](docs/FeedList.md)
 - [AmzSpApi::FeedsApiModel::FeedOptions](docs/FeedOptions.md)
 - [AmzSpApi::FeedsApiModel::GetFeedsResponse](docs/GetFeedsResponse.md)


## Documentation for Authorization

 All endpoints do not require authorization.

