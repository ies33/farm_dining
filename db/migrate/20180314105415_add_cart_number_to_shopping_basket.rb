class AddCartNumberToShoppingBasket < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_baskets, :cart_number, :string
  end
end
