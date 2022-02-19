# AmzSpApi::FinancesApiModel::ShipmentEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amazon_order_id** | **String** | An Amazon-defined identifier for an order. | [optional] 
**seller_order_id** | **String** | A seller-defined identifier for an order. | [optional] 
**marketplace_name** | **String** | The name of the marketplace where the event occurred. | [optional] 
**order_charge_list** | [**ChargeComponentList**](ChargeComponentList.md) | A list of order-level charges. These charges are applicable to Multi-Channel Fulfillment COD orders. | [optional] 
**order_charge_adjustment_list** | [**ChargeComponentList**](ChargeComponentList.md) | A list of order-level charge adjustments. These adjustments are applicable to Multi-Channel Fulfillment COD orders. | [optional] 
**shipment_fee_list** | [**FeeComponentList**](FeeComponentList.md) | A list of shipment-level fees. | [optional] 
**shipment_fee_adjustment_list** | [**FeeComponentList**](FeeComponentList.md) | A list of shipment-level fee adjustments. | [optional] 
**order_fee_list** | [**FeeComponentList**](FeeComponentList.md) | A list of order-level fees. These charges are applicable to Multi-Channel Fulfillment orders. | [optional] 
**order_fee_adjustment_list** | [**FeeComponentList**](FeeComponentList.md) | A list of order-level fee adjustments. These adjustments are applicable to Multi-Channel Fulfillment orders. | [optional] 
**direct_payment_list** | [**DirectPaymentList**](DirectPaymentList.md) | A list of transactions where buyers pay Amazon through one of the credit cards offered by Amazon or where buyers pay a seller directly through COD. | [optional] 
**posted_date** | **Date** | The date and time when the financial event was posted. | [optional] 
**shipment_item_list** | [**ShipmentItemList**](ShipmentItemList.md) |  | [optional] 
**shipment_item_adjustment_list** | [**ShipmentItemList**](ShipmentItemList.md) | A list of shipment item adjustments. | [optional] 


