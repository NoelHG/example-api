class CreateClocks < ActiveRecord::Migration[5.2]
  def change
    create_table :clocks do |t|
      t.datetime :sleep_time
      t.datetime :wake_time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
