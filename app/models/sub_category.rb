class SubCategory < ApplicationRecord
  # validates :name, presence: true
  has_many :to_do_categories
end
