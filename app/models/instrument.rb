class Instrument < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user
  has_many :line_items

  CONDITION = %w{ New Excellent Mint Used Fair Poor }
  has_one_attached :image

  validates :name, :category, :price_per_day, :available, presence: true
  validates :description, length: { maximum: 250, too_long: "%{count} characters is the maximum aloud. "}
  validates :name, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
  validates :price_per_day, length: { maximum: 7 }

  private

  def not_referenced_by_any_line_item
    Rails.logger.info "Line items count: #{line_items.count}"
    Rails.logger.info "Attempting to destroy Instrument with ID: #{id}, Line items count: #{line_items.count}"
    if line_items.exists?
      Rails.logger.info "Line items exist for Instrument ID: #{id}"
      errors.add(:base, "Items present in someones' cart or rent")
      throw :abort
    else
      Rails.logger.info "No line items found for Instrument ID: #{id}"
    end
  end
end
