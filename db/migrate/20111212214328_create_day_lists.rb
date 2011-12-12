class CreateDayLists < ActiveRecord::Migration
  def change
    create_table :day_lists do |t|
      t.date :date

      t.timestamps
    end
  end
end
