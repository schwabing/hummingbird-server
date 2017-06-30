class PaymentMethod
  class Paypal
    # Can we defer billing on this payment method?
    def self.deferrable?
      # Yep, PayPal's API provides this ability.
      true
    end

    def defer_until(date)
      # TODO: implement
    end
  end
end
