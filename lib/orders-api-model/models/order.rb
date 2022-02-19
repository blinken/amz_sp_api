=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module AmzSpApi::OrdersApiModel
  # Order information.
  class Order
    # An Amazon-defined order identifier, in 3-7-7 format.
    attr_accessor :amazon_order_id

    # A seller-defined order identifier.
    attr_accessor :seller_order_id

    # The date when the order was created.
    attr_accessor :purchase_date

    # The date when the order was last updated.  Note: LastUpdateDate is returned with an incorrect date for orders that were last updated before 2009-04-01.
    attr_accessor :last_update_date

    # The current order status.
    attr_accessor :order_status

    # Whether the order was fulfilled by Amazon (AFN) or by the seller (MFN).
    attr_accessor :fulfillment_channel

    # The sales channel of the first item in the order.
    attr_accessor :sales_channel

    # The order channel of the first item in the order.
    attr_accessor :order_channel

    # The shipment service level of the order.
    attr_accessor :ship_service_level

    # The total charge for this order.
    attr_accessor :order_total

    # The number of items shipped.
    attr_accessor :number_of_items_shipped

    # The number of items unshipped.
    attr_accessor :number_of_items_unshipped

    # Information about sub-payment methods for a Cash On Delivery (COD) order.  Note: For a COD order that is paid for using one sub-payment method, one PaymentExecutionDetailItem object is returned, with PaymentExecutionDetailItem/PaymentMethod = COD. For a COD order that is paid for using multiple sub-payment methods, two or more PaymentExecutionDetailItem objects are returned.
    attr_accessor :payment_execution_detail

    # The payment method for the order. This property is limited to Cash On Delivery (COD) and Convenience Store (CVS) payment methods. Unless you need the specific COD payment information provided by the PaymentExecutionDetailItem object, we recommend using the PaymentMethodDetails property to get payment method information.
    attr_accessor :payment_method

    # A list of payment methods for the order.
    attr_accessor :payment_method_details

    # The identifier for the marketplace where the order was placed.
    attr_accessor :marketplace_id

    # The shipment service level category of the order.  Possible values: Expedited, FreeEconomy, NextDay, SameDay, SecondDay, Scheduled, Standard.
    attr_accessor :shipment_service_level_category

    # The status of the Amazon Easy Ship order. This property is included only for Amazon Easy Ship orders.  Possible values: PendingPickUp, LabelCanceled, PickedUp, OutForDelivery, Damaged, Delivered, RejectedByBuyer, Undeliverable, ReturnedToSeller, ReturningToSeller.
    attr_accessor :easy_ship_shipment_status

    # Custom ship label for Checkout by Amazon (CBA).
    attr_accessor :cba_displayable_shipping_label

    # The type of the order.
    attr_accessor :order_type

    # The start of the time period within which you have committed to ship the order. In ISO 8601 date time format. Returned only for seller-fulfilled orders.  Note: EarliestShipDate might not be returned for orders placed before February 1, 2013.
    attr_accessor :earliest_ship_date

    # The end of the time period within which you have committed to ship the order. In ISO 8601 date time format. Returned only for seller-fulfilled orders.  Note: LatestShipDate might not be returned for orders placed before February 1, 2013.
    attr_accessor :latest_ship_date

    # The start of the time period within which you have committed to fulfill the order. In ISO 8601 date time format. Returned only for seller-fulfilled orders.
    attr_accessor :earliest_delivery_date

    # The end of the time period within which you have committed to fulfill the order. In ISO 8601 date time format. Returned only for seller-fulfilled orders that do not have a PendingAvailability, Pending, or Canceled status.
    attr_accessor :latest_delivery_date

    # When true, the order is an Amazon Business order. An Amazon Business order is an order where the buyer is a Verified Business Buyer.
    attr_accessor :is_business_order

    # When true, the order is a seller-fulfilled Amazon Prime order.
    attr_accessor :is_prime

    # When true, the order has a Premium Shipping Service Level Agreement. For more information about Premium Shipping orders, see \"Premium Shipping Options\" in the Seller Central Help for your marketplace.
    attr_accessor :is_premium_order

    # When true, the order is a GlobalExpress order.
    attr_accessor :is_global_express_enabled

    # The order ID value for the order that is being replaced. Returned only if IsReplacementOrder = true.
    attr_accessor :replaced_order_id

    # When true, this is a replacement order.
    attr_accessor :is_replacement_order

    # Indicates the date by which the seller must respond to the buyer with an estimated ship date. Returned only for Sourcing on Demand orders.
    attr_accessor :promise_response_due_date

    # When true, the estimated ship date is set for the order. Returned only for Sourcing on Demand orders.
    attr_accessor :is_estimated_ship_date_set

    # When true, the item within this order was bought and re-sold by Amazon Business EU SARL (ABEU). By buying and instantly re-selling your items, ABEU becomes the seller of record, making your inventory available for sale to customers who would not otherwise purchase from a third-party seller.
    attr_accessor :is_sold_by_ab

    # The recommended location for the seller to ship the items from. It is calculated at checkout. The seller may or may not choose to ship from this location.
    attr_accessor :default_ship_from_location_address

    # The buyer’s invoicing preference.
    attr_accessor :buyer_invoice_preference

    # Contains the business invoice tax information.
    attr_accessor :buyer_tax_information

    # Contains the instructions about the fulfillment like where should it be fulfilled from.
    attr_accessor :fulfillment_instruction

    # When true, this order is marked to be picked up from a store rather than delivered.
    attr_accessor :is_ispu

    # Tax information about the marketplace.
    attr_accessor :marketplace_tax_info

    # The seller’s friendly name registered in the marketplace.
    attr_accessor :seller_display_name

    attr_accessor :shipping_address

    attr_accessor :buyer_info

    # Contains information regarding the Shipping Settings Automaton program, such as whether the order's shipping settings were generated automatically, and what those settings are.
    attr_accessor :automated_shipping_settings

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amazon_order_id' => :'AmazonOrderId',
        :'seller_order_id' => :'SellerOrderId',
        :'purchase_date' => :'PurchaseDate',
        :'last_update_date' => :'LastUpdateDate',
        :'order_status' => :'OrderStatus',
        :'fulfillment_channel' => :'FulfillmentChannel',
        :'sales_channel' => :'SalesChannel',
        :'order_channel' => :'OrderChannel',
        :'ship_service_level' => :'ShipServiceLevel',
        :'order_total' => :'OrderTotal',
        :'number_of_items_shipped' => :'NumberOfItemsShipped',
        :'number_of_items_unshipped' => :'NumberOfItemsUnshipped',
        :'payment_execution_detail' => :'PaymentExecutionDetail',
        :'payment_method' => :'PaymentMethod',
        :'payment_method_details' => :'PaymentMethodDetails',
        :'marketplace_id' => :'MarketplaceId',
        :'shipment_service_level_category' => :'ShipmentServiceLevelCategory',
        :'easy_ship_shipment_status' => :'EasyShipShipmentStatus',
        :'cba_displayable_shipping_label' => :'CbaDisplayableShippingLabel',
        :'order_type' => :'OrderType',
        :'earliest_ship_date' => :'EarliestShipDate',
        :'latest_ship_date' => :'LatestShipDate',
        :'earliest_delivery_date' => :'EarliestDeliveryDate',
        :'latest_delivery_date' => :'LatestDeliveryDate',
        :'is_business_order' => :'IsBusinessOrder',
        :'is_prime' => :'IsPrime',
        :'is_premium_order' => :'IsPremiumOrder',
        :'is_global_express_enabled' => :'IsGlobalExpressEnabled',
        :'replaced_order_id' => :'ReplacedOrderId',
        :'is_replacement_order' => :'IsReplacementOrder',
        :'promise_response_due_date' => :'PromiseResponseDueDate',
        :'is_estimated_ship_date_set' => :'IsEstimatedShipDateSet',
        :'is_sold_by_ab' => :'IsSoldByAB',
        :'default_ship_from_location_address' => :'DefaultShipFromLocationAddress',
        :'buyer_invoice_preference' => :'BuyerInvoicePreference',
        :'buyer_tax_information' => :'BuyerTaxInformation',
        :'fulfillment_instruction' => :'FulfillmentInstruction',
        :'is_ispu' => :'IsISPU',
        :'marketplace_tax_info' => :'MarketplaceTaxInfo',
        :'seller_display_name' => :'SellerDisplayName',
        :'shipping_address' => :'ShippingAddress',
        :'buyer_info' => :'BuyerInfo',
        :'automated_shipping_settings' => :'AutomatedShippingSettings'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amazon_order_id' => :'String',
        :'seller_order_id' => :'String',
        :'purchase_date' => :'String',
        :'last_update_date' => :'String',
        :'order_status' => :'String',
        :'fulfillment_channel' => :'String',
        :'sales_channel' => :'String',
        :'order_channel' => :'String',
        :'ship_service_level' => :'String',
        :'order_total' => :'Money',
        :'number_of_items_shipped' => :'Integer',
        :'number_of_items_unshipped' => :'Integer',
        :'payment_execution_detail' => :'PaymentExecutionDetailItemList',
        :'payment_method' => :'String',
        :'payment_method_details' => :'PaymentMethodDetailItemList',
        :'marketplace_id' => :'String',
        :'shipment_service_level_category' => :'String',
        :'easy_ship_shipment_status' => :'String',
        :'cba_displayable_shipping_label' => :'String',
        :'order_type' => :'String',
        :'earliest_ship_date' => :'String',
        :'latest_ship_date' => :'String',
        :'earliest_delivery_date' => :'String',
        :'latest_delivery_date' => :'String',
        :'is_business_order' => :'BOOLEAN',
        :'is_prime' => :'BOOLEAN',
        :'is_premium_order' => :'BOOLEAN',
        :'is_global_express_enabled' => :'BOOLEAN',
        :'replaced_order_id' => :'String',
        :'is_replacement_order' => :'BOOLEAN',
        :'promise_response_due_date' => :'String',
        :'is_estimated_ship_date_set' => :'BOOLEAN',
        :'is_sold_by_ab' => :'BOOLEAN',
        :'default_ship_from_location_address' => :'Address',
        :'buyer_invoice_preference' => :'String',
        :'buyer_tax_information' => :'BuyerTaxInformation',
        :'fulfillment_instruction' => :'FulfillmentInstruction',
        :'is_ispu' => :'BOOLEAN',
        :'marketplace_tax_info' => :'MarketplaceTaxInfo',
        :'seller_display_name' => :'String',
        :'shipping_address' => :'Address',
        :'buyer_info' => :'BuyerInfo',
        :'automated_shipping_settings' => :'AutomatedShippingSettings'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AmazonOrderId')
        self.amazon_order_id = attributes[:'AmazonOrderId']
      end

      if attributes.has_key?(:'SellerOrderId')
        self.seller_order_id = attributes[:'SellerOrderId']
      end

      if attributes.has_key?(:'PurchaseDate')
        self.purchase_date = attributes[:'PurchaseDate']
      end

      if attributes.has_key?(:'LastUpdateDate')
        self.last_update_date = attributes[:'LastUpdateDate']
      end

      if attributes.has_key?(:'OrderStatus')
        self.order_status = attributes[:'OrderStatus']
      end

      if attributes.has_key?(:'FulfillmentChannel')
        self.fulfillment_channel = attributes[:'FulfillmentChannel']
      end

      if attributes.has_key?(:'SalesChannel')
        self.sales_channel = attributes[:'SalesChannel']
      end

      if attributes.has_key?(:'OrderChannel')
        self.order_channel = attributes[:'OrderChannel']
      end

      if attributes.has_key?(:'ShipServiceLevel')
        self.ship_service_level = attributes[:'ShipServiceLevel']
      end

      if attributes.has_key?(:'OrderTotal')
        self.order_total = attributes[:'OrderTotal']
      end

      if attributes.has_key?(:'NumberOfItemsShipped')
        self.number_of_items_shipped = attributes[:'NumberOfItemsShipped']
      end

      if attributes.has_key?(:'NumberOfItemsUnshipped')
        self.number_of_items_unshipped = attributes[:'NumberOfItemsUnshipped']
      end

      if attributes.has_key?(:'PaymentExecutionDetail')
        self.payment_execution_detail = attributes[:'PaymentExecutionDetail']
      end

      if attributes.has_key?(:'PaymentMethod')
        self.payment_method = attributes[:'PaymentMethod']
      end

      if attributes.has_key?(:'PaymentMethodDetails')
        self.payment_method_details = attributes[:'PaymentMethodDetails']
      end

      if attributes.has_key?(:'MarketplaceId')
        self.marketplace_id = attributes[:'MarketplaceId']
      end

      if attributes.has_key?(:'ShipmentServiceLevelCategory')
        self.shipment_service_level_category = attributes[:'ShipmentServiceLevelCategory']
      end

      if attributes.has_key?(:'EasyShipShipmentStatus')
        self.easy_ship_shipment_status = attributes[:'EasyShipShipmentStatus']
      end

      if attributes.has_key?(:'CbaDisplayableShippingLabel')
        self.cba_displayable_shipping_label = attributes[:'CbaDisplayableShippingLabel']
      end

      if attributes.has_key?(:'OrderType')
        self.order_type = attributes[:'OrderType']
      end

      if attributes.has_key?(:'EarliestShipDate')
        self.earliest_ship_date = attributes[:'EarliestShipDate']
      end

      if attributes.has_key?(:'LatestShipDate')
        self.latest_ship_date = attributes[:'LatestShipDate']
      end

      if attributes.has_key?(:'EarliestDeliveryDate')
        self.earliest_delivery_date = attributes[:'EarliestDeliveryDate']
      end

      if attributes.has_key?(:'LatestDeliveryDate')
        self.latest_delivery_date = attributes[:'LatestDeliveryDate']
      end

      if attributes.has_key?(:'IsBusinessOrder')
        self.is_business_order = attributes[:'IsBusinessOrder']
      end

      if attributes.has_key?(:'IsPrime')
        self.is_prime = attributes[:'IsPrime']
      end

      if attributes.has_key?(:'IsPremiumOrder')
        self.is_premium_order = attributes[:'IsPremiumOrder']
      end

      if attributes.has_key?(:'IsGlobalExpressEnabled')
        self.is_global_express_enabled = attributes[:'IsGlobalExpressEnabled']
      end

      if attributes.has_key?(:'ReplacedOrderId')
        self.replaced_order_id = attributes[:'ReplacedOrderId']
      end

      if attributes.has_key?(:'IsReplacementOrder')
        self.is_replacement_order = attributes[:'IsReplacementOrder']
      end

      if attributes.has_key?(:'PromiseResponseDueDate')
        self.promise_response_due_date = attributes[:'PromiseResponseDueDate']
      end

      if attributes.has_key?(:'IsEstimatedShipDateSet')
        self.is_estimated_ship_date_set = attributes[:'IsEstimatedShipDateSet']
      end

      if attributes.has_key?(:'IsSoldByAB')
        self.is_sold_by_ab = attributes[:'IsSoldByAB']
      end

      if attributes.has_key?(:'DefaultShipFromLocationAddress')
        self.default_ship_from_location_address = attributes[:'DefaultShipFromLocationAddress']
      end

      if attributes.has_key?(:'BuyerInvoicePreference')
        self.buyer_invoice_preference = attributes[:'BuyerInvoicePreference']
      end

      if attributes.has_key?(:'BuyerTaxInformation')
        self.buyer_tax_information = attributes[:'BuyerTaxInformation']
      end

      if attributes.has_key?(:'FulfillmentInstruction')
        self.fulfillment_instruction = attributes[:'FulfillmentInstruction']
      end

      if attributes.has_key?(:'IsISPU')
        self.is_ispu = attributes[:'IsISPU']
      end

      if attributes.has_key?(:'MarketplaceTaxInfo')
        self.marketplace_tax_info = attributes[:'MarketplaceTaxInfo']
      end

      if attributes.has_key?(:'SellerDisplayName')
        self.seller_display_name = attributes[:'SellerDisplayName']
      end

      if attributes.has_key?(:'ShippingAddress')
        self.shipping_address = attributes[:'ShippingAddress']
      end

      if attributes.has_key?(:'BuyerInfo')
        self.buyer_info = attributes[:'BuyerInfo']
      end

      if attributes.has_key?(:'AutomatedShippingSettings')
        self.automated_shipping_settings = attributes[:'AutomatedShippingSettings']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amazon_order_id.nil?
      return false if @purchase_date.nil?
      return false if @last_update_date.nil?
      return false if @order_status.nil?
      order_status_validator = EnumAttributeValidator.new('String', ["Pending", "Unshipped", "PartiallyShipped", "Shipped", "Canceled", "Unfulfillable", "InvoiceUnconfirmed", "PendingAvailability"])
      return false unless order_status_validator.valid?(@order_status)
      fulfillment_channel_validator = EnumAttributeValidator.new('String', ["MFN", "AFN"])
      return false unless fulfillment_channel_validator.valid?(@fulfillment_channel)
      payment_method_validator = EnumAttributeValidator.new('String', ["COD", "CVS", "Other"])
      return false unless payment_method_validator.valid?(@payment_method)
      order_type_validator = EnumAttributeValidator.new('String', ["StandardOrder", "LongLeadTimeOrder", "Preorder", "BackOrder", "SourcingOnDemandOrder"])
      return false unless order_type_validator.valid?(@order_type)
      buyer_invoice_preference_validator = EnumAttributeValidator.new('String', ["INDIVIDUAL", "BUSINESS"])
      return false unless buyer_invoice_preference_validator.valid?(@buyer_invoice_preference)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] order_status Object to be assigned
    def order_status=(order_status)
      validator = EnumAttributeValidator.new('String', ["Pending", "Unshipped", "PartiallyShipped", "Shipped", "Canceled", "Unfulfillable", "InvoiceUnconfirmed", "PendingAvailability"])
      unless validator.valid?(order_status)
        fail ArgumentError, "invalid value for 'order_status', must be one of #{validator.allowable_values}."
      end
      @order_status = order_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fulfillment_channel Object to be assigned
    def fulfillment_channel=(fulfillment_channel)
      validator = EnumAttributeValidator.new('String', ["MFN", "AFN"])
      unless validator.valid?(fulfillment_channel)
        fail ArgumentError, "invalid value for 'fulfillment_channel', must be one of #{validator.allowable_values}."
      end
      @fulfillment_channel = fulfillment_channel
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method)
      validator = EnumAttributeValidator.new('String', ["COD", "CVS", "Other"])
      unless validator.valid?(payment_method)
        fail ArgumentError, "invalid value for 'payment_method', must be one of #{validator.allowable_values}."
      end
      @payment_method = payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] order_type Object to be assigned
    def order_type=(order_type)
      validator = EnumAttributeValidator.new('String', ["StandardOrder", "LongLeadTimeOrder", "Preorder", "BackOrder", "SourcingOnDemandOrder"])
      unless validator.valid?(order_type)
        fail ArgumentError, "invalid value for 'order_type', must be one of #{validator.allowable_values}."
      end
      @order_type = order_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] buyer_invoice_preference Object to be assigned
    def buyer_invoice_preference=(buyer_invoice_preference)
      validator = EnumAttributeValidator.new('String', ["INDIVIDUAL", "BUSINESS"])
      unless validator.valid?(buyer_invoice_preference)
        fail ArgumentError, "invalid value for 'buyer_invoice_preference', must be one of #{validator.allowable_values}."
      end
      @buyer_invoice_preference = buyer_invoice_preference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amazon_order_id == o.amazon_order_id &&
          seller_order_id == o.seller_order_id &&
          purchase_date == o.purchase_date &&
          last_update_date == o.last_update_date &&
          order_status == o.order_status &&
          fulfillment_channel == o.fulfillment_channel &&
          sales_channel == o.sales_channel &&
          order_channel == o.order_channel &&
          ship_service_level == o.ship_service_level &&
          order_total == o.order_total &&
          number_of_items_shipped == o.number_of_items_shipped &&
          number_of_items_unshipped == o.number_of_items_unshipped &&
          payment_execution_detail == o.payment_execution_detail &&
          payment_method == o.payment_method &&
          payment_method_details == o.payment_method_details &&
          marketplace_id == o.marketplace_id &&
          shipment_service_level_category == o.shipment_service_level_category &&
          easy_ship_shipment_status == o.easy_ship_shipment_status &&
          cba_displayable_shipping_label == o.cba_displayable_shipping_label &&
          order_type == o.order_type &&
          earliest_ship_date == o.earliest_ship_date &&
          latest_ship_date == o.latest_ship_date &&
          earliest_delivery_date == o.earliest_delivery_date &&
          latest_delivery_date == o.latest_delivery_date &&
          is_business_order == o.is_business_order &&
          is_prime == o.is_prime &&
          is_premium_order == o.is_premium_order &&
          is_global_express_enabled == o.is_global_express_enabled &&
          replaced_order_id == o.replaced_order_id &&
          is_replacement_order == o.is_replacement_order &&
          promise_response_due_date == o.promise_response_due_date &&
          is_estimated_ship_date_set == o.is_estimated_ship_date_set &&
          is_sold_by_ab == o.is_sold_by_ab &&
          default_ship_from_location_address == o.default_ship_from_location_address &&
          buyer_invoice_preference == o.buyer_invoice_preference &&
          buyer_tax_information == o.buyer_tax_information &&
          fulfillment_instruction == o.fulfillment_instruction &&
          is_ispu == o.is_ispu &&
          marketplace_tax_info == o.marketplace_tax_info &&
          seller_display_name == o.seller_display_name &&
          shipping_address == o.shipping_address &&
          buyer_info == o.buyer_info &&
          automated_shipping_settings == o.automated_shipping_settings
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [amazon_order_id, seller_order_id, purchase_date, last_update_date, order_status, fulfillment_channel, sales_channel, order_channel, ship_service_level, order_total, number_of_items_shipped, number_of_items_unshipped, payment_execution_detail, payment_method, payment_method_details, marketplace_id, shipment_service_level_category, easy_ship_shipment_status, cba_displayable_shipping_label, order_type, earliest_ship_date, latest_ship_date, earliest_delivery_date, latest_delivery_date, is_business_order, is_prime, is_premium_order, is_global_express_enabled, replaced_order_id, is_replacement_order, promise_response_due_date, is_estimated_ship_date_set, is_sold_by_ab, default_ship_from_location_address, buyer_invoice_preference, buyer_tax_information, fulfillment_instruction, is_ispu, marketplace_tax_info, seller_display_name, shipping_address, buyer_info, automated_shipping_settings].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = AmzSpApi::OrdersApiModel.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
