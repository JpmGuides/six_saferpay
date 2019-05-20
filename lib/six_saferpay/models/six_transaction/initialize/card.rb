module SixSaferpay
  module SixTransaction
    module Initialize
      class Card

        attr_accessor(:number,
                      :exp_year,
                      :exp_month,
                      :holder_name,
                      :country_code,
                      :hash_value
                     )

        def initialize(number:,
                      exp_year:,
                      exp_month:,
                      holder_name: nil,
                      country_code: nil,
                      hash_value: nil
                      )
          @number = number
          @exp_year = exp_year
          @exp_month = exp_month
          @holder_name = holder_name
          @country_code = country_code
          @hash_value = hash_value
        end

        def to_hash
          body = Hash.new
          body.merge!(Number: @number)
          body.merge!(ExpYear: @exp_year)
          body.merge!(ExpMonth: @exp_month)
          body.merge!(HolderName: @holder_name) if @holder_name
          body.merge!(CountryCode: @country_code) if @country_code
          body.merge!(HashValue: @hash_value) if @hash_value
          body
        end
        alias_method :to_h, :to_hash

      end
    end
  end
end