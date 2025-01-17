=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'date'

module AmzSpApi::FulfillmentOutboundApiModel
  # Delivery and item information for a shipment in a fulfillment order.
  class FulfillmentShipment
    # A shipment identifier assigned by Amazon.
    attr_accessor :amazon_shipment_id

    # An identifier for the fulfillment center that the shipment will be sent from.
    attr_accessor :fulfillment_center_id

    # The current status of the shipment.
    attr_accessor :fulfillment_shipment_status

    # The meaning of the shippingDate value depends on the current status of the shipment. If the current value of FulfillmentShipmentStatus is:  * Pending - shippingDate represents the estimated time that the shipment will leave the Amazon fulfillment center.  * Shipped - shippingDate represents the date that the shipment left the Amazon fulfillment center. If a shipment includes more than one package, shippingDate applies to all of the packages in the shipment. If the value of FulfillmentShipmentStatus is CancelledByFulfiller or CancelledBySeller, shippingDate is not returned. The value must be in ISO 8601 date time format.
    attr_accessor :shipping_date

    # The estimated arrival date and time of the shipment, in ISO 8601 date time format. Note that this value can change over time. If a shipment includes more than one package, estimatedArrivalDate applies to all of the packages in the shipment. If the shipment has been cancelled, estimatedArrivalDate is not returned.
    attr_accessor :estimated_arrival_date

    # Provides additional insight into shipment timeline. Primairly used to communicate that actual delivery dates aren't available.
    attr_accessor :shipping_notes

    attr_accessor :fulfillment_shipment_item

    attr_accessor :fulfillment_shipment_package

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
        :'amazon_shipment_id' => :'amazonShipmentId',
        :'fulfillment_center_id' => :'fulfillmentCenterId',
        :'fulfillment_shipment_status' => :'fulfillmentShipmentStatus',
        :'shipping_date' => :'shippingDate',
        :'estimated_arrival_date' => :'estimatedArrivalDate',
        :'shipping_notes' => :'shippingNotes',
        :'fulfillment_shipment_item' => :'fulfillmentShipmentItem',
        :'fulfillment_shipment_package' => :'fulfillmentShipmentPackage'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amazon_shipment_id' => :'String',
        :'fulfillment_center_id' => :'String',
        :'fulfillment_shipment_status' => :'String',
        :'shipping_date' => :'Timestamp',
        :'estimated_arrival_date' => :'Timestamp',
        :'shipping_notes' => :'Array<String>',
        :'fulfillment_shipment_item' => :'FulfillmentShipmentItemList',
        :'fulfillment_shipment_package' => :'FulfillmentShipmentPackageList'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'amazonShipmentId')
        self.amazon_shipment_id = attributes[:'amazonShipmentId']
      end

      if attributes.has_key?(:'fulfillmentCenterId')
        self.fulfillment_center_id = attributes[:'fulfillmentCenterId']
      end

      if attributes.has_key?(:'fulfillmentShipmentStatus')
        self.fulfillment_shipment_status = attributes[:'fulfillmentShipmentStatus']
      end

      if attributes.has_key?(:'shippingDate')
        self.shipping_date = attributes[:'shippingDate']
      end

      if attributes.has_key?(:'estimatedArrivalDate')
        self.estimated_arrival_date = attributes[:'estimatedArrivalDate']
      end

      if attributes.has_key?(:'shippingNotes')
        if (value = attributes[:'shippingNotes']).is_a?(Array)
          self.shipping_notes = value
        end
      end

      if attributes.has_key?(:'fulfillmentShipmentItem')
        self.fulfillment_shipment_item = attributes[:'fulfillmentShipmentItem']
      end

      if attributes.has_key?(:'fulfillmentShipmentPackage')
        self.fulfillment_shipment_package = attributes[:'fulfillmentShipmentPackage']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @amazon_shipment_id.nil?
        invalid_properties.push('invalid value for "amazon_shipment_id", amazon_shipment_id cannot be nil.')
      end

      if @fulfillment_center_id.nil?
        invalid_properties.push('invalid value for "fulfillment_center_id", fulfillment_center_id cannot be nil.')
      end

      if @fulfillment_shipment_status.nil?
        invalid_properties.push('invalid value for "fulfillment_shipment_status", fulfillment_shipment_status cannot be nil.')
      end

      if @fulfillment_shipment_item.nil?
        invalid_properties.push('invalid value for "fulfillment_shipment_item", fulfillment_shipment_item cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amazon_shipment_id.nil?
      return false if @fulfillment_center_id.nil?
      return false if @fulfillment_shipment_status.nil?
      fulfillment_shipment_status_validator = EnumAttributeValidator.new('String', ['PENDING', 'SHIPPED', 'CANCELLED_BY_FULFILLER', 'CANCELLED_BY_SELLER'])
      return false unless fulfillment_shipment_status_validator.valid?(@fulfillment_shipment_status)
      return false if @fulfillment_shipment_item.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fulfillment_shipment_status Object to be assigned
    def fulfillment_shipment_status=(fulfillment_shipment_status)
      validator = EnumAttributeValidator.new('String', ['PENDING', 'SHIPPED', 'CANCELLED_BY_FULFILLER', 'CANCELLED_BY_SELLER'])
      unless validator.valid?(fulfillment_shipment_status)
        fail ArgumentError, 'invalid value for "fulfillment_shipment_status", must be one of #{validator.allowable_values}.'
      end
      @fulfillment_shipment_status = fulfillment_shipment_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amazon_shipment_id == o.amazon_shipment_id &&
          fulfillment_center_id == o.fulfillment_center_id &&
          fulfillment_shipment_status == o.fulfillment_shipment_status &&
          shipping_date == o.shipping_date &&
          estimated_arrival_date == o.estimated_arrival_date &&
          shipping_notes == o.shipping_notes &&
          fulfillment_shipment_item == o.fulfillment_shipment_item &&
          fulfillment_shipment_package == o.fulfillment_shipment_package
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [amazon_shipment_id, fulfillment_center_id, fulfillment_shipment_status, shipping_date, estimated_arrival_date, shipping_notes, fulfillment_shipment_item, fulfillment_shipment_package].hash
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
        temp_model = AmzSpApi::FulfillmentOutboundApiModel.const_get(type).new
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
