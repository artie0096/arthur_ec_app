class CartsController < ApplicationController

  def show
  end

  # 商品一覧画面から、「商品購入」を押した時のアクション
  def add_item
    @exisiting_cart = Cart.find_by(
      product_detail_id: params[:product_detail_id],
      user_id: current_user.id,
    )

    if @exisiting_cart
      total = params[:order_quantity].to_i + @exisiting_cart.order_quantity
      @exisiting_cart.update(
        order_quantity: total
      )
      redirect_back(fallback_location: root_path)

    else
      @cart = Cart.new(
        product_detail_id: params[:product_detail_id],
        user_id: current_user.id,
        order_quantity: params[:order_quantity]
      )

      if @cart.save
        redirect_back(fallback_location: root_path)
        puts "save ok"
      else
        redirect_back(fallback_location: root_path)
        puts "miss"
      end
    end

  end

  # カート詳細画面から、「更新」を押した時のアクション
  def update_item
  end

  # カート詳細画面から、「削除」を押した時のアクション
  def delete_item
  end

end