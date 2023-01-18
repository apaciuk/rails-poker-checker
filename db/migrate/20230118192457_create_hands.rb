class CreateHands < ActiveRecord::Migration[7.0]
  def change
    create_table :hands, id: :uuid do |t|
      t.string :name, default: "", null: false

      t.timestamps
    end
  end
end
