=begin
#Selling Partner API for A+ Content Management

#With the A+ Content API, you can build applications that help selling partners add rich marketing content to their Amazon product detail pages. A+ content helps selling partners share their brand and product story, which helps buyers make informed purchasing decisions. Selling partners assemble content by choosing from content modules and adding images and text.

OpenAPI spec version: 2020-11-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'date'

module AmzSpApi::AplusContentApiModel
  # A decorator applied to a content string value in order to create rich text.
  class Decorator
    attr_accessor :type

    # The starting character of this decorator within the content string. Use zero for the first character.
    attr_accessor :offset

    # The number of content characters to alter with this decorator. Decorators such as line breaks can have zero length and fit between characters.
    attr_accessor :length

    # The relative intensity or variation of this decorator. Decorators such as bullet-points, for example, can have multiple indentation depths.
    attr_accessor :depth

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'offset' => :'offset',
        :'length' => :'length',
        :'depth' => :'depth'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'DecoratorType',
        :'offset' => :'Integer',
        :'length' => :'Integer',
        :'depth' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'offset')
        self.offset = attributes[:'offset']
      end

      if attributes.has_key?(:'length')
        self.length = attributes[:'length']
      end

      if attributes.has_key?(:'depth')
        self.depth = attributes[:'depth']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@offset.nil? && @offset > 10000
        invalid_properties.push('invalid value for "offset", must be smaller than or equal to 10000.')
      end

      if !@offset.nil? && @offset < 0
        invalid_properties.push('invalid value for "offset", must be greater than or equal to 0.')
      end

      if !@length.nil? && @length > 10000
        invalid_properties.push('invalid value for "length", must be smaller than or equal to 10000.')
      end

      if !@length.nil? && @length < 0
        invalid_properties.push('invalid value for "length", must be greater than or equal to 0.')
      end

      if !@depth.nil? && @depth > 100
        invalid_properties.push('invalid value for "depth", must be smaller than or equal to 100.')
      end

      if !@depth.nil? && @depth < 0
        invalid_properties.push('invalid value for "depth", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@offset.nil? && @offset > 10000
      return false if !@offset.nil? && @offset < 0
      return false if !@length.nil? && @length > 10000
      return false if !@length.nil? && @length < 0
      return false if !@depth.nil? && @depth > 100
      return false if !@depth.nil? && @depth < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] offset Value to be assigned
    def offset=(offset)
      if !offset.nil? && offset > 10000
        fail ArgumentError, 'invalid value for "offset", must be smaller than or equal to 10000.'
      end

      if !offset.nil? && offset < 0
        fail ArgumentError, 'invalid value for "offset", must be greater than or equal to 0.'
      end

      @offset = offset
    end

    # Custom attribute writer method with validation
    # @param [Object] length Value to be assigned
    def length=(length)
      if !length.nil? && length > 10000
        fail ArgumentError, 'invalid value for "length", must be smaller than or equal to 10000.'
      end

      if !length.nil? && length < 0
        fail ArgumentError, 'invalid value for "length", must be greater than or equal to 0.'
      end

      @length = length
    end

    # Custom attribute writer method with validation
    # @param [Object] depth Value to be assigned
    def depth=(depth)
      if !depth.nil? && depth > 100
        fail ArgumentError, 'invalid value for "depth", must be smaller than or equal to 100.'
      end

      if !depth.nil? && depth < 0
        fail ArgumentError, 'invalid value for "depth", must be greater than or equal to 0.'
      end

      @depth = depth
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          offset == o.offset &&
          length == o.length &&
          depth == o.depth
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, offset, length, depth].hash
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
        temp_model = AmzSpApi::AplusContentApiModel.const_get(type).new
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
