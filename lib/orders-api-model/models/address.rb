=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.

OpenAPI spec version: v0

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

module AmzSpApi::OrdersApiModel
  # The shipping address for the order.
  class Address
    # The name.
    attr_accessor :name

    # The street address.
    attr_accessor :address_line1

    # Additional street address information, if required.
    attr_accessor :address_line2

    # Additional street address information, if required.
    attr_accessor :address_line3

    # The city 
    attr_accessor :city

    # The county.
    attr_accessor :county

    # The district.
    attr_accessor :district

    # The state or region.
    attr_accessor :state_or_region

    # The municipality.
    attr_accessor :municipality

    # The postal code.
    attr_accessor :postal_code

    # The country code. A two-character country code, in ISO 3166-1 alpha-2 format.
    attr_accessor :country_code

    # The phone number. Not returned for Fulfillment by Amazon (FBA) orders.
    attr_accessor :phone

    # The address type of the shipping address.
    attr_accessor :address_type

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
        :'name' => :'Name',
        :'address_line1' => :'AddressLine1',
        :'address_line2' => :'AddressLine2',
        :'address_line3' => :'AddressLine3',
        :'city' => :'City',
        :'county' => :'County',
        :'district' => :'District',
        :'state_or_region' => :'StateOrRegion',
        :'municipality' => :'Municipality',
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
        :'municipality' => :'String',
        :'postal_code' => :'String',
        :'country_code' => :'String',
        :'phone' => :'String',
        :'address_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

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

      if attributes.has_key?(:'Municipality')
        self.municipality = attributes[:'Municipality']
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
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      address_type_validator = EnumAttributeValidator.new('String', ["Residential", "Commercial"])
      return false unless address_type_validator.valid?(@address_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_type Object to be assigned
    def address_type=(address_type)
      validator = EnumAttributeValidator.new('String', ["Residential", "Commercial"])
      unless validator.valid?(address_type)
        fail ArgumentError, "invalid value for 'address_type', must be one of #{validator.allowable_values}."
      end
      @address_type = address_type
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
          municipality == o.municipality &&
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
      [name, address_line1, address_line2, address_line3, city, county, district, state_or_region, municipality, postal_code, country_code, phone, address_type].hash
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
        temp_model = AmzSpApi::OrdersApiModel.const_get(type).new
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
