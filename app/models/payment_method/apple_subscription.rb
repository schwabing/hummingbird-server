class PaymentMethod
  class AppleSubscription
    # Can we defer billing on this payment method?
    def self.deferrable?
      # Haha, nope, Apple is terrible.
      false
    end

    def defer_until(_date)
      raise NotImplementedError
    end
  end
end
