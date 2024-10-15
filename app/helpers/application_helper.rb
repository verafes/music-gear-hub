module ApplicationHelper
  def cart_count_over_one
#     return total_cart_items if total_cart_items > 0
    if @cart.line_items.count > 0
      return "<span class='tag is-dark'>#{@cart.line_items.count}</span>".html_safe
    end
  end

  def total_cart_items
    total = @cart.line_items.map(&:total_days).sum
    return total if total > 0
  end

  def all_items_have_dates?(cart)
    cart.line_items.all? do |line_item|
      line_item.start_date.present? && line_item.end_date.present?
    end
  end

end
