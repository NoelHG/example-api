class CreateClocks < ActiveRecord::Migration[5.2]
  def change
    create_table :clocks do |t|
      t.datetime :check_in
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
