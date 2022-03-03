class Reaction < ApplicationRecord
  belongs_to :comment

  def emoji
    case kind
    when 1
      "👍"
    when 2
      "👎"
    when 3
      "🧡"
    else
      "❓"
    end
  end
end
