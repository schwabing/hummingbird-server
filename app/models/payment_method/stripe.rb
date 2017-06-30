class PaymentMethod
  class Stripe
    # Can we defer billing on this payment method?
    def self.deferrable?
      # Yep, Stripe doesn't suck.
      true
    end

    def defer_until(date)
      # TODO: implement
    end

    def customer
      ::Stripe::Customer.retrieve(billing_id)
    end
  end
end
