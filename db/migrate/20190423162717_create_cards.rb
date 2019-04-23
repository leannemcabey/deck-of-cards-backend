class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.references :deck, foreign_key: true
      t.string :image
      t.string :value
      t.string :suit
      t.string :code
      t.timestamps
    end
  end
end
