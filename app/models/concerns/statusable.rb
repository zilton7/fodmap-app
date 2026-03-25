module Statusable
  extend ActiveSupport::Concern

  included do
    LEVELS = { 'n/a': 0, low: 1, medium: 2, high: 3 }.freeze

    enum :overall_status, LEVELS, prefix: :overall

    %i[oligos fructose polyols lactose].each do |sugar|
      enum "small_portion_#{sugar}".to_sym, LEVELS, prefix: true
      enum "large_portion_#{sugar}".to_sym, LEVELS, prefix: true
    end
  end
end
