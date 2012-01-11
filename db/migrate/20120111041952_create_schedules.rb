class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :reserved_at

      t.timestamps
    end
  end
end
