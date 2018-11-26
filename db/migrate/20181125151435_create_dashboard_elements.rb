class CreateDashboardElements < ActiveRecord::Migration[5.1]
  def change
    create_table :dashboard_elements do |t|
      t.integer :dashboard_id
      t.string :name
      t.string :category
      t.integer :position_top
      t.integer :position_left

      t.timestamps
    end
  end
end
