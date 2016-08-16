class CreateChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :channels do |t|
      t.integer :team_id, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
