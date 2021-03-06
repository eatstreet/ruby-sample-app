class Reaction < ApplicationRecord
  belongs_to :comment

  def emoji
    case kind
    when 1
      "๐"
    when 2
      "๐"
    when 3
      "๐งก"
    else
      "โ"
    end
  end
end
