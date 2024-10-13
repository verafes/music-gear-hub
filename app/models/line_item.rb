class LineItem < ApplicationRecord
  belongs_to :instrument
  belongs_to :cart

    def total_price
      instrument.price_per_day.to_i * total_days.to_i
    end

    def total_days
      return 0 unless start_date && end_date
      (end_date - start_date).to_i
    end
end
