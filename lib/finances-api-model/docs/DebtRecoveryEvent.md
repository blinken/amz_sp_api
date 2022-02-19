# AmzSpApi::FinancesApiModel::DebtRecoveryEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**debt_recovery_type** | **String** | The debt recovery type.  Possible values:  * DebtPayment  * DebtPaymentFailure  *DebtAdjustment | [optional] 
**recovery_amount** | [**Currency**](Currency.md) | The amount applied for recovery. | [optional] 
**over_payment_credit** | [**Currency**](Currency.md) | The amount returned for overpayment. | [optional] 
**debt_recovery_item_list** | [**DebtRecoveryItemList**](DebtRecoveryItemList.md) |  | [optional] 
**charge_instrument_list** | [**ChargeInstrumentList**](ChargeInstrumentList.md) |  | [optional] 


