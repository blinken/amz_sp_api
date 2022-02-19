# AmzSpApi::FulfillmentOutboundApiModel::CODSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_cod_required** | **BOOLEAN** | When true, this fulfillment order requires a COD (Cash On Delivery) payment. | 
**cod_charge** | [**Money**](Money.md) | The amount of the COD charge to be collected from the recipient for a COD order. | [optional] 
**cod_charge_tax** | [**Money**](Money.md) | The amount of the tax on the COD charge to be collected from the recipient for a COD order. | [optional] 
**shipping_charge** | [**Money**](Money.md) | The amount of the tax on the COD charge to be collected from the recipient for a COD order. | [optional] 
**shipping_charge_tax** | [**Money**](Money.md) | The amount of the tax on the shipping charge to be collected from the recipient for a COD order. | [optional] 


