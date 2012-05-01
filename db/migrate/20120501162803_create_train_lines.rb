class CreateTrainLines < ActiveRecord::Migration
  def change
    create_table :train_lines do |t|
      t.string :name
      t.integer :frequency

      t.timestamps
    end
  end
end
