=begin
#Selling Partner API for Merchant Fulfillment

#The Selling Partner API for Merchant Fulfillment helps you build applications that let sellers purchase shipping for non-Prime and Prime orders using Amazon’s Buy Shipping Services.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'date'

module AmzSpApi::MerchantFulfillmentApiModel
  # Shipment information required for requesting shipping service offers or for creating a shipment.
  class ShipmentRequestDetails
    # An Amazon-defined order identifier in 3-7-7 format.
    attr_accessor :amazon_order_id

    # A seller-defined order identifier.
    attr_accessor :seller_order_id

    attr_accessor :item_list

    # The address of the sender.
    attr_accessor :ship_from_address

    # The package dimensions.
    attr_accessor :package_dimensions

    # The package weight.
    attr_accessor :weight

    # The date by which the package must arrive to keep the promise to the customer, in ISO 8601 datetime format. If MustArriveByDate is specified, only shipping service offers that can be delivered by that date are returned.
    attr_accessor :must_arrive_by_date

    # When used in a request, this is the date and time that the seller wants to ship the package. When used in a response, this is the date and time that the package can be shipped by the indicated method.
    attr_accessor :ship_date

    # Extra services offered by the carrier.
    attr_accessor :shipping_service_options

    # Label customization options.
    attr_accessor :label_customization

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amazon_order_id' => :'AmazonOrderId',
        :'seller_order_id' => :'SellerOrderId',
        :'item_list' => :'ItemList',
        :'ship_from_address' => :'ShipFromAddress',
        :'package_dimensions' => :'PackageDimensions',
        :'weight' => :'Weight',
        :'must_arrive_by_date' => :'MustArriveByDate',
        :'ship_date' => :'ShipDate',
        :'shipping_service_options' => :'ShippingServiceOptions',
        :'label_customization' => :'LabelCustomization'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amazon_order_id' => :'AmazonOrderId',
        :'seller_order_id' => :'SellerOrderId',
        :'item_list' => :'ItemList',
        :'ship_from_address' => :'Address',
        :'package_dimensions' => :'PackageDimensions',
        :'weight' => :'Weight',
        :'must_arrive_by_date' => :'Timestamp',
        :'ship_date' => :'Timestamp',
        :'shipping_service_options' => :'ShippingServiceOptions',
        :'label_customization' => :'LabelCustomization'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'AmazonOrderId')
        self.amazon_order_id = attributes[:'AmazonOrderId']
      end

      if attributes.has_key?(:'SellerOrderId')
        self.seller_order_id = attributes[:'SellerOrderId']
      end

      if attributes.has_key?(:'ItemList')
        self.item_list = attributes[:'ItemList']
      end

      if attributes.has_key?(:'ShipFromAddress')
        self.ship_from_address = attributes[:'ShipFromAddress']
      end

      if attributes.has_key?(:'PackageDimensions')
        self.package_dimensions = attributes[:'PackageDimensions']
      end

      if attributes.has_key?(:'Weight')
        self.weight = attributes[:'Weight']
      end

      if attributes.has_key?(:'MustArriveByDate')
        self.must_arrive_by_date = attributes[:'MustArriveByDate']
      end

      if attributes.has_key?(:'ShipDate')
        self.ship_date = attributes[:'ShipDate']
      end

      if attributes.has_key?(:'ShippingServiceOptions')
        self.shipping_service_options = attributes[:'ShippingServiceOptions']
      end

      if attributes.has_key?(:'LabelCustomization')
        self.label_customization = attributes[:'LabelCustomization']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @amazon_order_id.nil?
        invalid_properties.push('invalid value for "amazon_order_id", amazon_order_id cannot be nil.')
      end

      if @item_list.nil?
        invalid_properties.push('invalid value for "item_list", item_list cannot be nil.')
      end

      if @ship_from_address.nil?
        invalid_properties.push('invalid value for "ship_from_address", ship_from_address cannot be nil.')
      end

      if @package_dimensions.nil?
        invalid_properties.push('invalid value for "package_dimensions", package_dimensions cannot be nil.')
      end

      if @weight.nil?
        invalid_properties.push('invalid value for "weight", weight cannot be nil.')
      end

      if @shipping_service_options.nil?
        invalid_properties.push('invalid value for "shipping_service_options", shipping_service_options cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amazon_order_id.nil?
      return false if @item_list.nil?
      return false if @ship_from_address.nil?
      return false if @package_dimensions.nil?
      return false if @weight.nil?
      return false if @shipping_service_options.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amazon_order_id == o.amazon_order_id &&
          seller_order_id == o.seller_order_id &&
          item_list == o.item_list &&
          ship_from_address == o.ship_from_address &&
          package_dimensions == o.package_dimensions &&
          weight == o.weight &&
          must_arrive_by_date == o.must_arrive_by_date &&
          ship_date == o.ship_date &&
          shipping_service_options == o.shipping_service_options &&
          label_customization == o.label_customization
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [amazon_order_id, seller_order_id, item_list, ship_from_address, package_dimensions, weight, must_arrive_by_date, ship_date, shipping_service_options, label_customization].hash
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
        temp_model = AmzSpApi::MerchantFulfillmentApiModel.const_get(type).new
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
