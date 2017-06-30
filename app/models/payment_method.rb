# rubocop:disable Metrics/LineLength
# == Schema Information
#
# Table name: payment_methods
#
#  id             :integer          not null, primary key
#  deferred_until :datetime
#  type           :string           not null
#  billing_id     :text             not null
#  user_id        :integer          not null
#
# Foreign Keys
#
#  fk_rails_e13d4c515f  (user_id => users.id)
#
# rubocop:enable Metrics/LineLength

class PaymentMethod < ApplicationRecord
  validates :type, presence: true
  validates :billing_id, presence: true
  validates :user, presence: true, uniqueness: true
end
