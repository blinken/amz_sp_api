=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'date'

module AmzSpApi::FulfillmentOutboundApiModel
  # Information about unfulfillable items in a fulfillment order preview.
  class UnfulfillablePreviewItem
    # The seller SKU of the item.
    attr_accessor :seller_sku

    attr_accessor :quantity

    # A fulfillment order item identifier created with a call to the getFulfillmentPreview operation.
    attr_accessor :seller_fulfillment_order_item_id

    # Error codes associated with the fulfillment order preview that indicate why the item is unfulfillable.
    attr_accessor :item_unfulfillable_reasons

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'seller_sku' => :'sellerSku',
        :'quantity' => :'quantity',
        :'seller_fulfillment_order_item_id' => :'sellerFulfillmentOrderItemId',
        :'item_unfulfillable_reasons' => :'itemUnfulfillableReasons'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'seller_sku' => :'String',
        :'quantity' => :'Quantity',
        :'seller_fulfillment_order_item_id' => :'String',
        :'item_unfulfillable_reasons' => :'StringList'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'sellerSku')
        self.seller_sku = attributes[:'sellerSku']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'sellerFulfillmentOrderItemId')
        self.seller_fulfillment_order_item_id = attributes[:'sellerFulfillmentOrderItemId']
      end

      if attributes.has_key?(:'itemUnfulfillableReasons')
        self.item_unfulfillable_reasons = attributes[:'itemUnfulfillableReasons']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @seller_sku.nil?
        invalid_properties.push('invalid value for "seller_sku", seller_sku cannot be nil.')
      end

      if @seller_sku.to_s.length > 50
        invalid_properties.push('invalid value for "seller_sku", the character length must be smaller than or equal to 50.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @seller_fulfillment_order_item_id.nil?
        invalid_properties.push('invalid value for "seller_fulfillment_order_item_id", seller_fulfillment_order_item_id cannot be nil.')
      end

      if @seller_fulfillment_order_item_id.to_s.length > 50
        invalid_properties.push('invalid value for "seller_fulfillment_order_item_id", the character length must be smaller than or equal to 50.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @seller_sku.nil?
      return false if @seller_sku.to_s.length > 50
      return false if @quantity.nil?
      return false if @seller_fulfillment_order_item_id.nil?
      return false if @seller_fulfillment_order_item_id.to_s.length > 50
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] seller_sku Value to be assigned
    def seller_sku=(seller_sku)
      if seller_sku.nil?
        fail ArgumentError, 'seller_sku cannot be nil'
      end

      if seller_sku.to_s.length > 50
        fail ArgumentError, 'invalid value for "seller_sku", the character length must be smaller than or equal to 50.'
      end

      @seller_sku = seller_sku
    end

    # Custom attribute writer method with validation
    # @param [Object] seller_fulfillment_order_item_id Value to be assigned
    def seller_fulfillment_order_item_id=(seller_fulfillment_order_item_id)
      if seller_fulfillment_order_item_id.nil?
        fail ArgumentError, 'seller_fulfillment_order_item_id cannot be nil'
      end

      if seller_fulfillment_order_item_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "seller_fulfillment_order_item_id", the character length must be smaller than or equal to 50.'
      end

      @seller_fulfillment_order_item_id = seller_fulfillment_order_item_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          seller_sku == o.seller_sku &&
          quantity == o.quantity &&
          seller_fulfillment_order_item_id == o.seller_fulfillment_order_item_id &&
          item_unfulfillable_reasons == o.item_unfulfillable_reasons
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [seller_sku, quantity, seller_fulfillment_order_item_id, item_unfulfillable_reasons].hash
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
