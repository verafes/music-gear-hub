class Instrument < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user, optional: true
  CONDITION = %w{ New Excellent Mint Used Fair Poor }
  has_one_attached :image

  validates :name, :category, :price_per_day, :available, presence: true
  validates :description, length: { maximum: 250, too_long: "%{count} characters is the maximum aloud. "}
  validates :name, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
  validates :price_per_day, length: { maximum: 7 }

  private

  def not_refereced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
end
