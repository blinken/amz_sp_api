# AmzSpApi::MerchantFulfillmentApiModel::ShippingServiceOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_experience** | [**DeliveryExperienceType**](DeliveryExperienceType.md) | The delivery confirmation level. | 
**declared_value** | [**CurrencyAmount**](CurrencyAmount.md) | The declared value of the shipment. The carrier uses this value to determine the amount to use to insure the shipment. If DeclaredValue is greater than the carrier&#39;s minimum insurance amount, the seller is charged for the additional insurance as determined by the carrier. For information about optional insurance coverage, see the Seller Central Help [UK](https://sellercentral.amazon.co.uk/gp/help/200204080) [US](https://sellercentral.amazon.com/gp/help/200204080). | [optional] 
**carrier_will_pick_up** | **BOOLEAN** | When true, the carrier will pick up the package.  Note: Scheduled carrier pickup is available only using Dynamex (US), DPD (UK), and Royal Mail (UK). | 
**carrier_will_pick_up_option** | [**CarrierWillPickUpOption**](CarrierWillPickUpOption.md) |  | [optional] 
**label_format** | [**LabelFormat**](LabelFormat.md) | The seller&#39;s preferred label format. | [optional] 


