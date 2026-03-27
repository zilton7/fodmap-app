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
end
