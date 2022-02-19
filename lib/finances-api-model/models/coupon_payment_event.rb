=begin
#Selling Partner API for Finances

#The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'date'

module AmzSpApi::FinancesApiModel
  # An event related to coupon payments.
  class CouponPaymentEvent
    # The date and time when the financial event was posted.
    attr_accessor :posted_date

    # A coupon identifier.
    attr_accessor :coupon_id

    # The description provided by the seller when they created the coupon.
    attr_accessor :seller_coupon_description

    # The number of coupon clips or redemptions.
    attr_accessor :clip_or_redemption_count

    # A payment event identifier.
    attr_accessor :payment_event_id

    attr_accessor :fee_component

    attr_accessor :charge_component

    # The FeeComponent value plus the ChargeComponent value.
    attr_accessor :total_amount

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'posted_date' => :'PostedDate',
        :'coupon_id' => :'CouponId',
        :'seller_coupon_description' => :'SellerCouponDescription',
        :'clip_or_redemption_count' => :'ClipOrRedemptionCount',
        :'payment_event_id' => :'PaymentEventId',
        :'fee_component' => :'FeeComponent',
        :'charge_component' => :'ChargeComponent',
        :'total_amount' => :'TotalAmount'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'posted_date' => :'Date',
        :'coupon_id' => :'String',
        :'seller_coupon_description' => :'String',
        :'clip_or_redemption_count' => :'Integer',
        :'payment_event_id' => :'String',
        :'fee_component' => :'FeeComponent',
        :'charge_component' => :'ChargeComponent',
        :'total_amount' => :'Currency'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'PostedDate')
        self.posted_date = attributes[:'PostedDate']
      end

      if attributes.has_key?(:'CouponId')
        self.coupon_id = attributes[:'CouponId']
      end

      if attributes.has_key?(:'SellerCouponDescription')
        self.seller_coupon_description = attributes[:'SellerCouponDescription']
      end

      if attributes.has_key?(:'ClipOrRedemptionCount')
        self.clip_or_redemption_count = attributes[:'ClipOrRedemptionCount']
      end

      if attributes.has_key?(:'PaymentEventId')
        self.payment_event_id = attributes[:'PaymentEventId']
      end

      if attributes.has_key?(:'FeeComponent')
        self.fee_component = attributes[:'FeeComponent']
      end

      if attributes.has_key?(:'ChargeComponent')
        self.charge_component = attributes[:'ChargeComponent']
      end

      if attributes.has_key?(:'TotalAmount')
        self.total_amount = attributes[:'TotalAmount']
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
          posted_date == o.posted_date &&
          coupon_id == o.coupon_id &&
          seller_coupon_description == o.seller_coupon_description &&
          clip_or_redemption_count == o.clip_or_redemption_count &&
          payment_event_id == o.payment_event_id &&
          fee_component == o.fee_component &&
          charge_component == o.charge_component &&
          total_amount == o.total_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [posted_date, coupon_id, seller_coupon_description, clip_or_redemption_count, payment_event_id, fee_component, charge_component, total_amount].hash
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
