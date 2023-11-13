class Customer < ApplicationRecord
  enum category: {residential: 0, commercial: 1}
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: categories.keys }
end
