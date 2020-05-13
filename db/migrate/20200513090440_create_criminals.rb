class CreateCriminals < ActiveRecord::Migration[6.0]
  def change
    create_table :criminals do |t|
      t.string :name
      t.integer :sentence_days
      t.references :prison, null: false, foreign_key: true

      t.timestamps
    end
  end
end
