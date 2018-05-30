class Matches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :challenger
      t.integer :challengee
      t.boolean :challengerOutcome
      t.integer :status
    end
  end
end
