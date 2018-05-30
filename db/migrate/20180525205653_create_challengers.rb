class CreateChallengers < ActiveRecord::Migration[5.2]
  def change
    create_table :challengers do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
