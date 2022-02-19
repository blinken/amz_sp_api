=begin
#Selling Partner API for Retail Procurement Orders

#The Selling Partner API for Retail Procurement Orders provides programmatic access to vendor orders data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'date'

module AmzSpApi::VendorOrdersApiModel
  # Details of the item being acknowledged.
  class OrderAcknowledgementItem
    # Line item sequence number for the item.
    attr_accessor :item_sequence_number

    # Amazon Standard Identification Number (ASIN) of an item.
    attr_accessor :amazon_product_identifier

    # The vendor selected product identification of the item. Should be the same as was sent in the purchase order.
    attr_accessor :vendor_product_identifier

    # The quantity of this item ordered.
    attr_accessor :ordered_quantity

    # The cost to Amazon, which should match the cost on the invoice. This is a required field. If this is left blank the file will reject in Amazon systems. Price information should not be zero or negative. Indicates a net unit price.
    attr_accessor :net_cost

    # The list price. This is required only if a vendor sells books with a list price.
    attr_accessor :list_price

    # The discount multiplier that should be applied to the price if a vendor sells books with a list price. This is a multiplier factor to arrive at a final discounted price. A multiplier of .90 would be the factor if a 10% discount is given.
    attr_accessor :discount_multiplier

    # This is used to indicate acknowledged quantity.
    attr_accessor :item_acknowledgements

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'item_sequence_number' => :'itemSequenceNumber',
        :'amazon_product_identifier' => :'amazonProductIdentifier',
        :'vendor_product_identifier' => :'vendorProductIdentifier',
        :'ordered_quantity' => :'orderedQuantity',
        :'net_cost' => :'netCost',
        :'list_price' => :'listPrice',
        :'discount_multiplier' => :'discountMultiplier',
        :'item_acknowledgements' => :'itemAcknowledgements'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'item_sequence_number' => :'String',
        :'amazon_product_identifier' => :'String',
        :'vendor_product_identifier' => :'String',
        :'ordered_quantity' => :'ItemQuantity',
        :'net_cost' => :'Money',
        :'list_price' => :'Money',
        :'discount_multiplier' => :'String',
        :'item_acknowledgements' => :'Array<OrderItemAcknowledgement>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'itemSequenceNumber')
        self.item_sequence_number = attributes[:'itemSequenceNumber']
      end

      if attributes.has_key?(:'amazonProductIdentifier')
        self.amazon_product_identifier = attributes[:'amazonProductIdentifier']
      end

      if attributes.has_key?(:'vendorProductIdentifier')
        self.vendor_product_identifier = attributes[:'vendorProductIdentifier']
      end

      if attributes.has_key?(:'orderedQuantity')
        self.ordered_quantity = attributes[:'orderedQuantity']
      end

      if attributes.has_key?(:'netCost')
        self.net_cost = attributes[:'netCost']
      end

      if attributes.has_key?(:'listPrice')
        self.list_price = attributes[:'listPrice']
      end

      if attributes.has_key?(:'discountMultiplier')
        self.discount_multiplier = attributes[:'discountMultiplier']
      end

      if attributes.has_key?(:'itemAcknowledgements')
        if (value = attributes[:'itemAcknowledgements']).is_a?(Array)
          self.item_acknowledgements = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @ordered_quantity.nil?
        invalid_properties.push('invalid value for "ordered_quantity", ordered_quantity cannot be nil.')
      end

      if @item_acknowledgements.nil?
        invalid_properties.push('invalid value for "item_acknowledgements", item_acknowledgements cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @ordered_quantity.nil?
      return false if @item_acknowledgements.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          item_sequence_number == o.item_sequence_number &&
          amazon_product_identifier == o.amazon_product_identifier &&
          vendor_product_identifier == o.vendor_product_identifier &&
          ordered_quantity == o.ordered_quantity &&
          net_cost == o.net_cost &&
          list_price == o.list_price &&
          discount_multiplier == o.discount_multiplier &&
          item_acknowledgements == o.item_acknowledgements
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [item_sequence_number, amazon_product_identifier, vendor_product_identifier, ordered_quantity, net_cost, list_price, discount_multiplier, item_acknowledgements].hash
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
        temp_model = AmzSpApi::VendorOrdersApiModel.const_get(type).new
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