class PaymentMethod
  class GooglePlaySubscription
    # Can we defer billing on this payment method?
    def self.deferrable?
      # Even Google has this!
      true
    end

    def defer_until(date)
      # TODO: implement
    end
  end
end
