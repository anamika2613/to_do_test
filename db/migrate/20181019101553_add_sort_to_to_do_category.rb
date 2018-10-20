class AddSortToToDoCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :to_do_categories, :sort, :integer
  end
end
