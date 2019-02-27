module SixSaferpay
  module PaymentPage
    class Initialize

      attr_accessor :request_header, :terminal_id, :payment, :return_urls

      def initialize(value, currency, order_id, description)
        @request_header = SixSaferpay::RequestHeader.new
        @terminal_id = SixSaferpay::Terminal.new
        @payment = SixSaferpay::Payment
          .new(value, currency, order_id, description)
        @return_urls = SixSaferpay::ReturnUrls.new
      end

      def to_hash
        hash = Hash.new
        hash.merge!(@request_header.to_h)
        hash.merge!(@terminal_id.to_h)
        hash.merge!(@payment.to_h)
        hash.merge!(@return_urls.to_h)
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/PaymentPage/Initialize'
      end

    end
  end
end