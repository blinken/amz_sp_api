=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

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

module AmzSpApi::FulfillmentOutboundApiModel
  # An item that Amazon accepted for return.
  class CreateReturnItem
    # An identifier assigned by the seller to the return item.
    attr_accessor :seller_return_item_id

    # The identifier assigned to the item by the seller when the fulfillment order was created.
    attr_accessor :seller_fulfillment_order_item_id

    # The identifier for the shipment that is associated with the return item.
    attr_accessor :amazon_shipment_id

    # The return reason code assigned to the return item by the seller.
    attr_accessor :return_reason_code

    # An optional comment about the return item.
    attr_accessor :return_comment


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'seller_return_item_id' => :'sellerReturnItemId',
        :'seller_fulfillment_order_item_id' => :'sellerFulfillmentOrderItemId',
        :'amazon_shipment_id' => :'amazonShipmentId',
        :'return_reason_code' => :'returnReasonCode',
        :'return_comment' => :'returnComment'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'seller_return_item_id' => :'String',
        :'seller_fulfillment_order_item_id' => :'String',
        :'amazon_shipment_id' => :'String',
        :'return_reason_code' => :'String',
        :'return_comment' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'sellerReturnItemId')
        self.seller_return_item_id = attributes[:'sellerReturnItemId']
      end

      if attributes.has_key?(:'sellerFulfillmentOrderItemId')
        self.seller_fulfillment_order_item_id = attributes[:'sellerFulfillmentOrderItemId']
      end

      if attributes.has_key?(:'amazonShipmentId')
        self.amazon_shipment_id = attributes[:'amazonShipmentId']
      end

      if attributes.has_key?(:'returnReasonCode')
        self.return_reason_code = attributes[:'returnReasonCode']
      end

      if attributes.has_key?(:'returnComment')
        self.return_comment = attributes[:'returnComment']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @seller_return_item_id.nil?
        invalid_properties.push("invalid value for 'seller_return_item_id', seller_return_item_id cannot be nil.")
      end

      if @seller_return_item_id.to_s.length > 80
        invalid_properties.push("invalid value for 'seller_return_item_id', the character length must be smaller than or equal to 80.")
      end


      if !@return_comment.nil? && @return_comment.to_s.length > 1000
        invalid_properties.push("invalid value for 'return_comment', the character length must be smaller than or equal to 1000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @seller_return_item_id.nil?
      return false if @seller_return_item_id.to_s.length > 80
      return false if @seller_fulfillment_order_item_id.nil?
      return false if @amazon_shipment_id.nil?
      return false if @return_reason_code.nil?
      return false if !@return_comment.nil? && @return_comment.to_s.length > 1000
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] seller_return_item_id Value to be assigned
    def seller_return_item_id=(seller_return_item_id)
      if seller_return_item_id.nil?
        fail ArgumentError, "seller_return_item_id cannot be nil"
      end

      if seller_return_item_id.to_s.length > 80
        fail ArgumentError, "invalid value for 'seller_return_item_id', the character length must be smaller than or equal to 80."
      end

      @seller_return_item_id = seller_return_item_id
    end

    # Custom attribute writer method with validation
    # @param [Object] return_comment Value to be assigned
    def return_comment=(return_comment)

      if !return_comment.nil? && return_comment.to_s.length > 1000
        fail ArgumentError, "invalid value for 'return_comment', the character length must be smaller than or equal to 1000."
      end

      @return_comment = return_comment
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          seller_return_item_id == o.seller_return_item_id &&
          seller_fulfillment_order_item_id == o.seller_fulfillment_order_item_id &&
          amazon_shipment_id == o.amazon_shipment_id &&
          return_reason_code == o.return_reason_code &&
          return_comment == o.return_comment
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [seller_return_item_id, seller_fulfillment_order_item_id, amazon_shipment_id, return_reason_code, return_comment].hash
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
