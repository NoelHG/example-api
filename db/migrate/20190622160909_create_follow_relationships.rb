class CreateFollowRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :follow_relationships do |t|
      t.integer :follower_id, foreign_key: { to_table: :users }, index: true
      t.integer :followee_id, foreign_key: { to_table: :users }, index: true

      t.timestamps
    end
    add_index :follow_relationships, [:follower_id, :followee_id], unique: true
  end
end
