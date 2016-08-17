class CreateUserChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :user_channels do |t|
      t.integer :user_id, null: false
      t.integer :channel_id, null: false
      t.timestamps
    end
  end
end
