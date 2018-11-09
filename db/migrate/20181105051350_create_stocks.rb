# rails generate model Stock ticker:string name:stringlast_price:decimal
class CreateStocks < ActiveRecord::Migration[5.2]
  def up()
    create_table :stocks do |t|
      t.string :ticker
      t.string :name
      t.decimal :last_price

      t.timestamps
    end
  end

  def down()
    drop_table :stocks
  end 
end
