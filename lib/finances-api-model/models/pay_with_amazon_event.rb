=begin
#Selling Partner API for Finances

#The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'date'

module AmzSpApi::FinancesApiModel
  # An event related to the seller's Pay with Amazon account.
  class PayWithAmazonEvent
    # An order identifier that is specified by the seller.
    attr_accessor :seller_order_id

    # The date and time when the payment transaction is posted. In ISO 8601 date time format.
    attr_accessor :transaction_posted_date

    # The type of business object.
    attr_accessor :business_object_type

    # The sales channel for the transaction.
    attr_accessor :sales_channel

    # The charge associated with the event.
    attr_accessor :charge

    # A list of fees associated with the event.
    attr_accessor :fee_list

    # The type of payment.  Possible values:  * Sales
    attr_accessor :payment_amount_type

    # A short description of this payment event.
    attr_accessor :amount_description

    # The fulfillment channel.  Possible values:  * AFN - Amazon Fulfillment Network (Fulfillment by Amazon)  * MFN - Merchant Fulfillment Network (self-fulfilled)
    attr_accessor :fulfillment_channel

    # The store name where the event occurred.
    attr_accessor :store_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'seller_order_id' => :'SellerOrderId',
        :'transaction_posted_date' => :'TransactionPostedDate',
        :'business_object_type' => :'BusinessObjectType',
        :'sales_channel' => :'SalesChannel',
        :'charge' => :'Charge',
        :'fee_list' => :'FeeList',
        :'payment_amount_type' => :'PaymentAmountType',
        :'amount_description' => :'AmountDescription',
        :'fulfillment_channel' => :'FulfillmentChannel',
        :'store_name' => :'StoreName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'seller_order_id' => :'String',
        :'transaction_posted_date' => :'Date',
        :'business_object_type' => :'String',
        :'sales_channel' => :'String',
        :'charge' => :'ChargeComponent',
        :'fee_list' => :'FeeComponentList',
        :'payment_amount_type' => :'String',
        :'amount_description' => :'String',
        :'fulfillment_channel' => :'String',
        :'store_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'SellerOrderId')
        self.seller_order_id = attributes[:'SellerOrderId']
      end

      if attributes.has_key?(:'TransactionPostedDate')
        self.transaction_posted_date = attributes[:'TransactionPostedDate']
      end

      if attributes.has_key?(:'BusinessObjectType')
        self.business_object_type = attributes[:'BusinessObjectType']
      end

      if attributes.has_key?(:'SalesChannel')
        self.sales_channel = attributes[:'SalesChannel']
      end

      if attributes.has_key?(:'Charge')
        self.charge = attributes[:'Charge']
      end

      if attributes.has_key?(:'FeeList')
        self.fee_list = attributes[:'FeeList']
      end

      if attributes.has_key?(:'PaymentAmountType')
        self.payment_amount_type = attributes[:'PaymentAmountType']
      end

      if attributes.has_key?(:'AmountDescription')
        self.amount_description = attributes[:'AmountDescription']
      end

      if attributes.has_key?(:'FulfillmentChannel')
        self.fulfillment_channel = attributes[:'FulfillmentChannel']
      end

      if attributes.has_key?(:'StoreName')
        self.store_name = attributes[:'StoreName']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          seller_order_id == o.seller_order_id &&
          transaction_posted_date == o.transaction_posted_date &&
          business_object_type == o.business_object_type &&
          sales_channel == o.sales_channel &&
          charge == o.charge &&
          fee_list == o.fee_list &&
          payment_amount_type == o.payment_amount_type &&
          amount_description == o.amount_description &&
          fulfillment_channel == o.fulfillment_channel &&
          store_name == o.store_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [seller_order_id, transaction_posted_date, business_object_type, sales_channel, charge, fee_list, payment_amount_type, amount_description, fulfillment_channel, store_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
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
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = AmzSpApi::FinancesApiModel.const_get(type).new
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
        value.compact.map { |v| _to_hash(v) }
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
