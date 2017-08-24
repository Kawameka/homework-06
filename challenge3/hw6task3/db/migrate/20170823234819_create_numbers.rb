class CreateNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :numbers do |t|
      t.integer :age


      t.timestamps
    end
  end
end
