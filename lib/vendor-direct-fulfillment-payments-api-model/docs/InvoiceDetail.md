# AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::InvoiceDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_number** | **String** | The unique invoice number. | 
**invoice_date** | **DateTime** | Invoice date. | 
**reference_number** | **String** | An additional unique reference number used for regulatory or other purposes. | [optional] 
**remit_to_party** | [**PartyIdentification**](PartyIdentification.md) | Name, address and tax details of the party receiving the payment of this invoice. | 
**ship_from_party** | [**PartyIdentification**](PartyIdentification.md) | Warehouse code of the vendor as in the order. | 
**bill_to_party** | [**PartyIdentification**](PartyIdentification.md) | Name, address and tax details of the party to whom this invoice is issued. | [optional] 
**ship_to_country_code** | **String** | Ship-to country code. | [optional] 
**payment_terms_code** | **String** | The payment terms for the invoice. | [optional] 
**invoice_total** | [**Money**](Money.md) | Total amount details of the invoice. | 
**tax_totals** | [**Array&lt;TaxDetail&gt;**](TaxDetail.md) | Individual tax details per line item. | [optional] 
**additional_details** | [**Array&lt;AdditionalDetails&gt;**](AdditionalDetails.md) | Additional details provided by the selling party, for tax related or other purposes. | [optional] 
**charge_details** | [**Array&lt;ChargeDetails&gt;**](ChargeDetails.md) | Total charge amount details for all line items. | [optional] 
**items** | [**Array&lt;InvoiceItem&gt;**](InvoiceItem.md) | Provides the details of the items in this invoice. | 


