# AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::TaxDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tax_type** | **String** | Type of the tax applied. | 
**tax_rate** | [**Decimal**](Decimal.md) | Tax percentage applied. Percentage must be expressed in decimal. | [optional] 
**tax_amount** | [**Money**](Money.md) | Total tax amount applied on invoice total or an item total. | 
**taxable_amount** | [**Money**](Money.md) | This field will contain the invoice amount that is taxable at the rate specified in the tax rate field. | [optional] 


