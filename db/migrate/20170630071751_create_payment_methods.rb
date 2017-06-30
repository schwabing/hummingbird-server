class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.references :user, foreign_key: true, null: false
      t.string :type, null: false
      # Stripe & PayPal/Braintree use a short ID
      # Apple Pay uses a giant base64'd file
      # Google uses a medium-length token
      t.text :billing_id, null: false
      t.datetime :deferred_until
    end
  end
end
