class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :pseudoname

      t.timestamps
    end
  end
end
