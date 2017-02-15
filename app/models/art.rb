class Art < ApplicationRecord
  validates :colors, uniqueness: true
end
