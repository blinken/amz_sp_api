=begin
#Selling Partner API for Direct Fulfillment Payments

#The Selling Partner API for Direct Fulfillment Payments provides programmatic access to a direct fulfillment vendor's invoice data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'date'

module AmzSpApi::VendorDirectFulfillmentPaymentsApiModel
  class InvoiceDetail
    # The unique invoice number.
    attr_accessor :invoice_number

    # Invoice date.
    attr_accessor :invoice_date

    # An additional unique reference number used for regulatory or other purposes.
    attr_accessor :reference_number

    # Name, address and tax details of the party receiving the payment of this invoice.
    attr_accessor :remit_to_party

    # Warehouse code of the vendor as in the order.
    attr_accessor :ship_from_party

    # Name, address and tax details of the party to whom this invoice is issued.
    attr_accessor :bill_to_party

    # Ship-to country code.
    attr_accessor :ship_to_country_code

    # The payment terms for the invoice.
    attr_accessor :payment_terms_code

    # Total amount details of the invoice.
    attr_accessor :invoice_total

    # Individual tax details per line item.
    attr_accessor :tax_totals

    # Additional details provided by the selling party, for tax related or other purposes.
    attr_accessor :additional_details

    # Total charge amount details for all line items.
    attr_accessor :charge_details

    # Provides the details of the items in this invoice.
    attr_accessor :items

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'invoice_number' => :'invoiceNumber',
        :'invoice_date' => :'invoiceDate',
        :'reference_number' => :'referenceNumber',
        :'remit_to_party' => :'remitToParty',
        :'ship_from_party' => :'shipFromParty',
        :'bill_to_party' => :'billToParty',
        :'ship_to_country_code' => :'shipToCountryCode',
        :'payment_terms_code' => :'paymentTermsCode',
        :'invoice_total' => :'invoiceTotal',
        :'tax_totals' => :'taxTotals',
        :'additional_details' => :'additionalDetails',
        :'charge_details' => :'chargeDetails',
        :'items' => :'items'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'invoice_number' => :'String',
        :'invoice_date' => :'DateTime',
        :'reference_number' => :'String',
        :'remit_to_party' => :'PartyIdentification',
        :'ship_from_party' => :'PartyIdentification',
        :'bill_to_party' => :'PartyIdentification',
        :'ship_to_country_code' => :'String',
        :'payment_terms_code' => :'String',
        :'invoice_total' => :'Money',
        :'tax_totals' => :'Array<TaxDetail>',
        :'additional_details' => :'Array<AdditionalDetails>',
        :'charge_details' => :'Array<ChargeDetails>',
        :'items' => :'Array<InvoiceItem>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'invoiceNumber')
        self.invoice_number = attributes[:'invoiceNumber']
      end

      if attributes.has_key?(:'invoiceDate')
        self.invoice_date = attributes[:'invoiceDate']
      end

      if attributes.has_key?(:'referenceNumber')
        self.reference_number = attributes[:'referenceNumber']
      end

      if attributes.has_key?(:'remitToParty')
        self.remit_to_party = attributes[:'remitToParty']
      end

      if attributes.has_key?(:'shipFromParty')
        self.ship_from_party = attributes[:'shipFromParty']
      end

      if attributes.has_key?(:'billToParty')
        self.bill_to_party = attributes[:'billToParty']
      end

      if attributes.has_key?(:'shipToCountryCode')
        self.ship_to_country_code = attributes[:'shipToCountryCode']
      end

      if attributes.has_key?(:'paymentTermsCode')
        self.payment_terms_code = attributes[:'paymentTermsCode']
      end

      if attributes.has_key?(:'invoiceTotal')
        self.invoice_total = attributes[:'invoiceTotal']
      end

      if attributes.has_key?(:'taxTotals')
        if (value = attributes[:'taxTotals']).is_a?(Array)
          self.tax_totals = value
        end
      end

      if attributes.has_key?(:'additionalDetails')
        if (value = attributes[:'additionalDetails']).is_a?(Array)
          self.additional_details = value
        end
      end

      if attributes.has_key?(:'chargeDetails')
        if (value = attributes[:'chargeDetails']).is_a?(Array)
          self.charge_details = value
        end
      end

      if attributes.has_key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @invoice_number.nil?
        invalid_properties.push('invalid value for "invoice_number", invoice_number cannot be nil.')
      end

      if @invoice_date.nil?
        invalid_properties.push('invalid value for "invoice_date", invoice_date cannot be nil.')
      end

      if @remit_to_party.nil?
        invalid_properties.push('invalid value for "remit_to_party", remit_to_party cannot be nil.')
      end

      if @ship_from_party.nil?
        invalid_properties.push('invalid value for "ship_from_party", ship_from_party cannot be nil.')
      end

      if @invoice_total.nil?
        invalid_properties.push('invalid value for "invoice_total", invoice_total cannot be nil.')
      end

      if @items.nil?
        invalid_properties.push('invalid value for "items", items cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @invoice_number.nil?
      return false if @invoice_date.nil?
      return false if @remit_to_party.nil?
      return false if @ship_from_party.nil?
      return false if @invoice_total.nil?
      return false if @items.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          invoice_number == o.invoice_number &&
          invoice_date == o.invoice_date &&
          reference_number == o.reference_number &&
          remit_to_party == o.remit_to_party &&
          ship_from_party == o.ship_from_party &&
          bill_to_party == o.bill_to_party &&
          ship_to_country_code == o.ship_to_country_code &&
          payment_terms_code == o.payment_terms_code &&
          invoice_total == o.invoice_total &&
          tax_totals == o.tax_totals &&
          additional_details == o.additional_details &&
          charge_details == o.charge_details &&
          items == o.items
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [invoice_number, invoice_date, reference_number, remit_to_party, ship_from_party, bill_to_party, ship_to_country_code, payment_terms_code, invoice_total, tax_totals, additional_details, charge_details, items].hash
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
        temp_model = AmzSpApi::VendorDirectFulfillmentPaymentsApiModel.const_get(type).new
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