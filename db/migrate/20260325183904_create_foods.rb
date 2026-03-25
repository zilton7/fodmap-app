class CreateFoods < ActiveRecord::Migration[8.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :category
      t.integer :overall_status
      t.string :small_portion_desc
      t.string :large_portion_desc
      t.integer :small_portion_oligos
      t.integer :small_portion_fructose
      t.integer :small_portion_polyols
      t.integer :small_portion_lactose
      t.integer :large_portion_oligos
      t.integer :large_portion_fructose
      t.integer :large_portion_polyols
      t.integer :large_portion_lactose
      t.string :notes

      t.timestamps
    end
  end
end
