class CreateCheckers < ActiveRecord::Migration
  def change
    create_table :checkers do |t|
      t.string :type
      t.string :name
      t.text :options
      t.references :server
      t.timestamps
    end
  end
end
