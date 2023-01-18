class CreateChecks < ActiveRecord::Migration[7.0]
  def change
    create_table :checks, id: :uuid do |t|
      t.string :status, null: false, default: ""
      t.string :hand_name, null: false, default: ""

      t.timestamps
    end
  end
end
