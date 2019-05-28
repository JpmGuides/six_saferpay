require 'spec_helper'

RSpec.describe SixSaferpay::SixPaymentPage::Initialize do

  subject { SpinningWheel.create('six_payment_page_initialize') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      config_set: subject.config_set,
      terminal_id: subject.terminal_id,
      payment: subject.payment.to_h,
      payment_methods: subject.payment_methods,
      payment_methods_options: subject.payment_methods_options.to_h,
      wallets: subject.wallets,
      payer: subject.payer.to_h,
      register_alias: subject.register_alias.to_h,
      return_urls: subject.return_urls.to_h,
      notification: subject.notification.to_h,
      styling: subject.styling.to_h,
      billing_address_form: subject.billing_address_form.to_h,
      delivery_address_form: subject.delivery_address_form.to_h,
      card_form: subject.card_form.to_h,
      condition: subject.condition
    }
  }


  describe 'to_hash' do
    it 'returns the hash representation of the six payment page initialize' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end