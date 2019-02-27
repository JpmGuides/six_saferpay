module SixSaferpay
  module PaymentPage
    class Assert

      attr_accessor :request_header, :token

      def initialize(token)
        @request_header = SixSaferpay::RequestHeader.new
        @token = SixSaferpay::Token.new(token)
      end

      def to_hash
        hash = Hash.new
        hash.merge!(@request_header.to_h)
        hash.merge!(@token.to_h)
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/PaymentPage/Assert'
      end

    end
  end
end