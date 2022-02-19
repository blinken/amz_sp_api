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
  # The request body schema for the getFulfillmentPreview operation.
  class GetFulfillmentPreviewRequest
    # The marketplace the fulfillment order is placed against.
    attr_accessor :marketplace_id

    # The destination address for the fulfillment order preview.
    attr_accessor :address

    # Identifying information and quantity information for the items in the fulfillment order preview.
    attr_accessor :items

    # A list of shipping methods used for creating fulfillment order previews.  Possible values:  * Standard - Standard shipping method. * Expedited - Expedited shipping method. * Priority - Priority shipping method. * ScheduledDelivery - Scheduled Delivery shipping method. Note: Shipping method service level agreements vary by marketplace. Sellers should see the Seller Central website in their marketplace for shipping method service level agreements and fulfillment fees.
    attr_accessor :shipping_speed_categories

    # Specifies whether to return fulfillment order previews that are for COD (Cash On Delivery).  Possible values:  * true - Returns all fulfillment order previews (both for COD and not for COD). * false - Returns only fulfillment order previews that are not for COD.
    attr_accessor :include_cod_fulfillment_preview

    # Specifies whether to return the ScheduledDeliveryInfo response object, which contains the available delivery windows for a Scheduled Delivery. The ScheduledDeliveryInfo response object can only be returned for fulfillment order previews with ShippingSpeedCategories = ScheduledDelivery.
    attr_accessor :include_delivery_windows

    # A list of features and their fulfillment policies to apply to the order.
    attr_accessor :feature_constraints


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'marketplace_id' => :'marketplaceId',
        :'address' => :'address',
        :'items' => :'items',
        :'shipping_speed_categories' => :'shippingSpeedCategories',
        :'include_cod_fulfillment_preview' => :'includeCODFulfillmentPreview',
        :'include_delivery_windows' => :'includeDeliveryWindows',
        :'feature_constraints' => :'featureConstraints'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'marketplace_id' => :'String',
        :'address' => :'Address',
        :'items' => :'GetFulfillmentPreviewItemList',
        :'shipping_speed_categories' => :'ShippingSpeedCategoryList',
        :'include_cod_fulfillment_preview' => :'BOOLEAN',
        :'include_delivery_windows' => :'BOOLEAN',
        :'feature_constraints' => :'Array<FeatureSettings>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'marketplaceId')
        self.marketplace_id = attributes[:'marketplaceId']
      end

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'items')
        self.items = attributes[:'items']
      end

      if attributes.has_key?(:'shippingSpeedCategories')
        self.shipping_speed_categories = attributes[:'shippingSpeedCategories']
      end

      if attributes.has_key?(:'includeCODFulfillmentPreview')
        self.include_cod_fulfillment_preview = attributes[:'includeCODFulfillmentPreview']
      end

      if attributes.has_key?(:'includeDeliveryWindows')
        self.include_delivery_windows = attributes[:'includeDeliveryWindows']
      end

      if attributes.has_key?(:'featureConstraints')
        if (value = attributes[:'featureConstraints']).is_a?(Array)
          self.feature_constraints = value
        end
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
      return false if @address.nil?
      return false if @items.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          marketplace_id == o.marketplace_id &&
          address == o.address &&
          items == o.items &&
          shipping_speed_categories == o.shipping_speed_categories &&
          include_cod_fulfillment_preview == o.include_cod_fulfillment_preview &&
          include_delivery_windows == o.include_delivery_windows &&
          feature_constraints == o.feature_constraints
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [marketplace_id, address, items, shipping_speed_categories, include_cod_fulfillment_preview, include_delivery_windows, feature_constraints].hash
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
