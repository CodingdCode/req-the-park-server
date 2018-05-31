class Matches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :challenger_id
      t.integer :challengee_id
      t.boolean :challengerOutcome
      t.integer :status
    end
  end
end
