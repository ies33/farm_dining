class OrdersController < ApplicationController

  def new
  end

  def save
  end

  def create
    @shopping_basket = ShoppingBasket.where(restaurant: current_user.restaurant, status: 0)
    if @shopping_basket.empty?
      @shopping_basket = ShoppingBasket.create(restaurant: current_user.restaurant, status: 0)
    end
    @ingredient = Ingredient.find(params[:order][:ingredient_id])
    @order = Order.new(order_params)
    @order.ingredient = @ingredient
    @order.price_paid = @ingredient.price * params[:order][:order_quantity].to_i
    @order.shopping_basket = @shopping_basket.first
    @order.save!
    redirect_to ingredients_path
  end

  private

  def order_params
    params.require(:order).permit(:order_quantity, :price_paid)
  end
end

