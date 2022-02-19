# AmzSpApi::FinancesApiModel::AffordabilityExpenseEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amazon_order_id** | **String** | An Amazon-defined identifier for an order. | [optional] 
**posted_date** | **Date** | The date and time when the financial event was created. | [optional] 
**marketplace_id** | **String** | An encrypted, Amazon-defined marketplace identifier. | [optional] 
**transaction_type** | **String** | Indicates the type of transaction.   Possible values:  * Charge - For an affordability promotion expense.  * Refund - For an affordability promotion expense reversal. | [optional] 
**base_expense** | [**Currency**](Currency.md) | The amount charged for clicks incurred under the Sponsored Products program. | [optional] 
**tax_type_cgst** | [**Currency**](Currency.md) | Central Goods and Service Tax, charged and collected by the central government. | 
**tax_type_sgst** | [**Currency**](Currency.md) | State Goods and Service Tax, charged and collected by the state government. | 
**tax_type_igst** | [**Currency**](Currency.md) | Integrated Goods and Service Tax, charged and collected by the central government. | 
**total_expense** | [**Currency**](Currency.md) | The total amount charged to the seller. TotalExpense &#x3D; BaseExpense + TaxTypeIGST + TaxTypeCGST + TaxTypeSGST. | [optional] 


