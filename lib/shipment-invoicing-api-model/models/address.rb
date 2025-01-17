=begin
#Selling Partner API for Shipment Invoicing

#The Selling Partner API for Shipment Invoicing helps you programmatically retrieve shipment invoice information in the Brazil marketplace for a selling partner’s Fulfillment by Amazon (FBA) orders.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'date'

module AmzSpApi::ShipmentInvoicingApiModel
  # The shipping address details of the shipment.
  class Address
    # The name.
    attr_accessor :name

    # The street address.
    attr_accessor :address_line1

    # Additional street address information, if required.
    attr_accessor :address_line2

    # Additional street address information, if required.
    attr_accessor :address_line3

    # The city.
    attr_accessor :city

    # The county.
    attr_accessor :county

    # The district.
    attr_accessor :district

    # The state or region.
    attr_accessor :state_or_region

    # The postal code.
    attr_accessor :postal_code

    # The country code.
    attr_accessor :country_code

    # The phone number.
    attr_accessor :phone

    attr_accessor :address_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'address_line1' => :'AddressLine1',
        :'address_line2' => :'AddressLine2',
        :'address_line3' => :'AddressLine3',
        :'city' => :'City',
        :'county' => :'County',
        :'district' => :'District',
        :'state_or_region' => :'StateOrRegion',
        :'postal_code' => :'PostalCode',
        :'country_code' => :'CountryCode',
        :'phone' => :'Phone',
        :'address_type' => :'AddressType'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'address_line3' => :'String',
        :'city' => :'String',
        :'county' => :'String',
        :'district' => :'String',
        :'state_or_region' => :'String',
        :'postal_code' => :'String',
        :'country_code' => :'String',
        :'phone' => :'String',
        :'address_type' => :'AddressTypeEnum'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'AddressLine1')
        self.address_line1 = attributes[:'AddressLine1']
      end

      if attributes.has_key?(:'AddressLine2')
        self.address_line2 = attributes[:'AddressLine2']
      end

      if attributes.has_key?(:'AddressLine3')
        self.address_line3 = attributes[:'AddressLine3']
      end

      if attributes.has_key?(:'City')
        self.city = attributes[:'City']
      end

      if attributes.has_key?(:'County')
        self.county = attributes[:'County']
      end

      if attributes.has_key?(:'District')
        self.district = attributes[:'District']
      end

      if attributes.has_key?(:'StateOrRegion')
        self.state_or_region = attributes[:'StateOrRegion']
      end

      if attributes.has_key?(:'PostalCode')
        self.postal_code = attributes[:'PostalCode']
      end

      if attributes.has_key?(:'CountryCode')
        self.country_code = attributes[:'CountryCode']
      end

      if attributes.has_key?(:'Phone')
        self.phone = attributes[:'Phone']
      end

      if attributes.has_key?(:'AddressType')
        self.address_type = attributes[:'AddressType']
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
          name == o.name &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          address_line3 == o.address_line3 &&
          city == o.city &&
          county == o.county &&
          district == o.district &&
          state_or_region == o.state_or_region &&
          postal_code == o.postal_code &&
          country_code == o.country_code &&
          phone == o.phone &&
          address_type == o.address_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, address_line1, address_line2, address_line3, city, county, district, state_or_region, postal_code, country_code, phone, address_type].hash
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
        temp_model = AmzSpApi::ShipmentInvoicingApiModel.const_get(type).new
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
