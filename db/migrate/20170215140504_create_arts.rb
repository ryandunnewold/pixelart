class CreateArts < ActiveRecord::Migration[5.0]
  def change
    create_table :arts do |t|
      t.string :name
      t.string :owner
      t.text :colors, array: true, default: []

      t.timestamps
    end
  end
end
