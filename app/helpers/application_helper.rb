module ApplicationHelper
  def food_name(food)
    t("foods.#{food.name.downcase
              .gsub(' / ', '_')
              .gsub(' ', '_')
              .gsub(')', '')
              .gsub('(', '')
              .gsub('%', '')
              .gsub(',', '')
              .gsub(':', '')
              .gsub('-', '_')
              .gsub('/', '_')}.name", default: food.name)
  end

  def category_name(food)
    t("category.names.#{food.category.downcase
              .gsub(' / ', '_')
              .gsub(' ', '_')
              .gsub(')', '')
              .gsub('(', '')
              .gsub('%', '')
              .gsub(',', '')
              .gsub(':', '')
              .gsub('-', '_')
              .gsub('/', '_')}", default: food.category)
  end

  def status_icon(val)
    val_str = val.to_s.downcase
    if val_str == "high"
      '<svg class="w-5 h-5 text-red-500 mx-auto" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M6 18L18 6M6 6l12 12"></path></svg>'.html_safe
    elsif val_str == "low"
      '<svg class="w-5 h-5 text-green-500 mx-auto" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M5 13l4 4L19 7"></path></svg>'.html_safe
    elsif val_str == "medium"
      '<span class="text-yellow-500 font-bold mx-auto text-lg">-</span>'.html_safe
    else
      '<span class="text-gray-300 mx-auto">-</span>'.html_safe
    end
  end
end
