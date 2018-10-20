class ToDoCategory < ApplicationRecord
  include RailsSortable::Model
  set_sortable :sort
  
  validates :title, presence: true
  belongs_to :sub_category, optional: true
  belongs_to :user
end
