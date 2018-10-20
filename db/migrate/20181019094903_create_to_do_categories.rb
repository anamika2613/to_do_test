class CreateToDoCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :to_do_categories do |t|
      t.string :title
      t.datetime :due_date
      t.boolean :status
      t.references :sub_category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
