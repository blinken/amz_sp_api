=begin
#Selling Partner API for Direct Fulfillment Orders

#The Selling Partner API for Direct Fulfillment Orders provides programmatic access to a direct fulfillment vendor's order data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'date'

module AmzSpApi::VendorDirectFulfillmentOrdersApiModel
  # Shipment details required for the shipment.
  class ShipmentDetails
    # When true, this is a priority shipment.
    attr_accessor :is_priority_shipment

    # When true, this order is part of a scheduled delivery program.
    attr_accessor :is_scheduled_delivery_shipment

    # When true, a packing slip is required to be sent to the customer.
    attr_accessor :is_pslip_required

    # When true, the order contain a gift. Include the gift message and gift wrap information.
    attr_accessor :is_gift

    # Ship method to be used for shipping the order. Amazon defines ship method codes indicating the shipping carrier and shipment service level. To see the full list of ship methods in use, including both the code and the friendly name, search the 'Help' section on Vendor Central for 'ship methods'.
    attr_accessor :ship_method

    attr_accessor :shipment_dates

    # Message to customer for order status.
    attr_accessor :message_to_customer

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_priority_shipment' => :'isPriorityShipment',
        :'is_scheduled_delivery_shipment' => :'isScheduledDeliveryShipment',
        :'is_pslip_required' => :'isPslipRequired',
        :'is_gift' => :'isGift',
        :'ship_method' => :'shipMethod',
        :'shipment_dates' => :'shipmentDates',
        :'message_to_customer' => :'messageToCustomer'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_priority_shipment' => :'BOOLEAN',
        :'is_scheduled_delivery_shipment' => :'BOOLEAN',
        :'is_pslip_required' => :'BOOLEAN',
        :'is_gift' => :'BOOLEAN',
        :'ship_method' => :'String',
        :'shipment_dates' => :'ShipmentDates',
        :'message_to_customer' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'isPriorityShipment')
        self.is_priority_shipment = attributes[:'isPriorityShipment']
      end

      if attributes.has_key?(:'isScheduledDeliveryShipment')
        self.is_scheduled_delivery_shipment = attributes[:'isScheduledDeliveryShipment']
      end

      if attributes.has_key?(:'isPslipRequired')
        self.is_pslip_required = attributes[:'isPslipRequired']
      end

      if attributes.has_key?(:'isGift')
        self.is_gift = attributes[:'isGift']
      end

      if attributes.has_key?(:'shipMethod')
        self.ship_method = attributes[:'shipMethod']
      end

      if attributes.has_key?(:'shipmentDates')
        self.shipment_dates = attributes[:'shipmentDates']
      end

      if attributes.has_key?(:'messageToCustomer')
        self.message_to_customer = attributes[:'messageToCustomer']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @is_priority_shipment.nil?
        invalid_properties.push('invalid value for "is_priority_shipment", is_priority_shipment cannot be nil.')
      end

      if @is_pslip_required.nil?
        invalid_properties.push('invalid value for "is_pslip_required", is_pslip_required cannot be nil.')
      end

      if @ship_method.nil?
        invalid_properties.push('invalid value for "ship_method", ship_method cannot be nil.')
      end

      if @shipment_dates.nil?
        invalid_properties.push('invalid value for "shipment_dates", shipment_dates cannot be nil.')
      end

      if @message_to_customer.nil?
        invalid_properties.push('invalid value for "message_to_customer", message_to_customer cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @is_priority_shipment.nil?
      return false if @is_pslip_required.nil?
      return false if @ship_method.nil?
      return false if @shipment_dates.nil?
      return false if @message_to_customer.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_priority_shipment == o.is_priority_shipment &&
          is_scheduled_delivery_shipment == o.is_scheduled_delivery_shipment &&
          is_pslip_required == o.is_pslip_required &&
          is_gift == o.is_gift &&
          ship_method == o.ship_method &&
          shipment_dates == o.shipment_dates &&
          message_to_customer == o.message_to_customer
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [is_priority_shipment, is_scheduled_delivery_shipment, is_pslip_required, is_gift, ship_method, shipment_dates, message_to_customer].hash
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
        temp_model = AmzSpApi::VendorDirectFulfillmentOrdersApiModel.const_get(type).new
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