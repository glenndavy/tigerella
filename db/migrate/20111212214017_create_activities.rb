class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.text :comment
      t.integer :estimate
      t.integer :day_list_id

      t.timestamps
    end
  end
end
