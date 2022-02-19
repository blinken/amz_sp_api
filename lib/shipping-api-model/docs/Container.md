# AmzSpApi::ShippingApiModel::Container

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**container_type** | **String** | The type of physical container being used. (always &#39;PACKAGE&#39;) | [optional] 
**container_reference_id** | [**ContainerReferenceId**](ContainerReferenceId.md) |  | 
**value** | [**Currency**](Currency.md) | The total value of all items in the container. | 
**dimensions** | [**Dimensions**](Dimensions.md) | The length, width, height, and weight of the container. | 
**items** | [**Array&lt;ContainerItem&gt;**](ContainerItem.md) | A list of the items in the container. | 
**weight** | [**Weight**](Weight.md) | The weight of the container. | 


