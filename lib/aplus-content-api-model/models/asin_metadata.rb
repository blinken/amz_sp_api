=begin
#Selling Partner API for A+ Content Management

#With the A+ Content API, you can build applications that help selling partners add rich marketing content to their Amazon product detail pages. A+ content helps selling partners share their brand and product story, which helps buyers make informed purchasing decisions. Selling partners assemble content by choosing from content modules and adding images and text.

OpenAPI spec version: 2020-11-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'date'

module AmzSpApi::AplusContentApiModel
  # The A+ Content ASIN with additional metadata for content management. If you don't include the `includedDataSet` parameter in a call to the listContentDocumentAsinRelations operation, the related ASINs are returned without metadata.
  class AsinMetadata
    attr_accessor :asin

    attr_accessor :badge_set

    attr_accessor :parent

    # The title for the ASIN in the Amazon catalog.
    attr_accessor :title

    # The default image for the ASIN in the Amazon catalog.
    attr_accessor :image_url

    attr_accessor :content_reference_key_set

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'asin' => :'asin',
        :'badge_set' => :'badgeSet',
        :'parent' => :'parent',
        :'title' => :'title',
        :'image_url' => :'imageUrl',
        :'content_reference_key_set' => :'contentReferenceKeySet'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'asin' => :'Asin',
        :'badge_set' => :'AsinBadgeSet',
        :'parent' => :'Asin',
        :'title' => :'String',
        :'image_url' => :'String',
        :'content_reference_key_set' => :'ContentReferenceKeySet'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'asin')
        self.asin = attributes[:'asin']
      end

      if attributes.has_key?(:'badgeSet')
        self.badge_set = attributes[:'badgeSet']
      end

      if attributes.has_key?(:'parent')
        self.parent = attributes[:'parent']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'imageUrl')
        self.image_url = attributes[:'imageUrl']
      end

      if attributes.has_key?(:'contentReferenceKeySet')
        self.content_reference_key_set = attributes[:'contentReferenceKeySet']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @asin.nil?
        invalid_properties.push('invalid value for "asin", asin cannot be nil.')
      end

      if !@title.nil? && @title.to_s.length < 1
        invalid_properties.push('invalid value for "title", the character length must be great than or equal to 1.')
      end

      if !@image_url.nil? && @image_url.to_s.length < 1
        invalid_properties.push('invalid value for "image_url", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @asin.nil?
      return false if !@title.nil? && @title.to_s.length < 1
      return false if !@image_url.nil? && @image_url.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if !title.nil? && title.to_s.length < 1
        fail ArgumentError, 'invalid value for "title", the character length must be great than or equal to 1.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] image_url Value to be assigned
    def image_url=(image_url)
      if !image_url.nil? && image_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "image_url", the character length must be great than or equal to 1.'
      end

      @image_url = image_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          asin == o.asin &&
          badge_set == o.badge_set &&
          parent == o.parent &&
          title == o.title &&
          image_url == o.image_url &&
          content_reference_key_set == o.content_reference_key_set
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [asin, badge_set, parent, title, image_url, content_reference_key_set].hash
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
