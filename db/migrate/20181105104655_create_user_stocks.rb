# rails generate model UserStock user:references stock:references
class CreateUserStocks < ActiveRecord::Migration[5.2]
  def up()
    create_table :user_stocks do |t|
      t.references :user, foreign_key: true
      t.references :stock, foreign_key: true

      t.timestamps
    end
  end

  def down()
    drop_table :user_stocks
  end 
end
