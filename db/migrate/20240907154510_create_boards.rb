class CreateBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :boards do |t|
      t.text :tiles
      t.text :numbers

      t.timestamps
    end
  end
end
