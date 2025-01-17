=begin
#Selling Partner API for Product Fees

#The Selling Partner API for Product Fees lets you programmatically retrieve estimated fees for a product. You can then account for those fees in your pricing.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'date'

module AmzSpApi::ProductFeesApiModel
  # The type of fee, fee amount, and other details.
  class FeeDetail
    # The type of fee charged to a seller.
    attr_accessor :fee_type

    # The amount charged for a given fee.
    attr_accessor :fee_amount

    # The promotion amount for a given fee.
    attr_accessor :fee_promotion

    # The tax amount for a given fee.
    attr_accessor :tax_amount

    # The final fee amount for a given fee.
    attr_accessor :final_fee

    attr_accessor :included_fee_detail_list

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'fee_type' => :'FeeType',
        :'fee_amount' => :'FeeAmount',
        :'fee_promotion' => :'FeePromotion',
        :'tax_amount' => :'TaxAmount',
        :'final_fee' => :'FinalFee',
        :'included_fee_detail_list' => :'IncludedFeeDetailList'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'fee_type' => :'String',
        :'fee_amount' => :'MoneyType',
        :'fee_promotion' => :'MoneyType',
        :'tax_amount' => :'MoneyType',
        :'final_fee' => :'MoneyType',
        :'included_fee_detail_list' => :'IncludedFeeDetailList'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'FeeType')
        self.fee_type = attributes[:'FeeType']
      end

      if attributes.has_key?(:'FeeAmount')
        self.fee_amount = attributes[:'FeeAmount']
      end

      if attributes.has_key?(:'FeePromotion')
        self.fee_promotion = attributes[:'FeePromotion']
      end

      if attributes.has_key?(:'TaxAmount')
        self.tax_amount = attributes[:'TaxAmount']
      end

      if attributes.has_key?(:'FinalFee')
        self.final_fee = attributes[:'FinalFee']
      end

      if attributes.has_key?(:'IncludedFeeDetailList')
        self.included_fee_detail_list = attributes[:'IncludedFeeDetailList']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @fee_type.nil?
        invalid_properties.push('invalid value for "fee_type", fee_type cannot be nil.')
      end

      if @fee_amount.nil?
        invalid_properties.push('invalid value for "fee_amount", fee_amount cannot be nil.')
      end

      if @final_fee.nil?
        invalid_properties.push('invalid value for "final_fee", final_fee cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @fee_type.nil?
      return false if @fee_amount.nil?
      return false if @final_fee.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          fee_type == o.fee_type &&
          fee_amount == o.fee_amount &&
          fee_promotion == o.fee_promotion &&
          tax_amount == o.tax_amount &&
          final_fee == o.final_fee &&
          included_fee_detail_list == o.included_fee_detail_list
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [fee_type, fee_amount, fee_promotion, tax_amount, final_fee, included_fee_detail_list].hash
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
        temp_model = AmzSpApi::ProductFeesApiModel.const_get(type).new
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
