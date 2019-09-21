class ProductDetailsController < ApplicationController
  before_action :set_product_detail, only: [:show, :edit, :update, :destroy]
  # before_action :set_product, 
  # GET /product_details
  # GET /product_details.json
  def index
    @product_details = ProductDetail.where(product_id: params[:product_id])
    @product = Product.find(params[:product_id])

  end

  # GET /product_details/1
  # GET /product_details/1.json
  def show
  end

  # GET /product_details/new
  def new
    @product_detail = ProductDetail.new
  end

  # GET /product_details/1/edit
  def edit
  end

  # POST /product_details
  # POST /product_details.json
  def create
    @product_detail = ProductDetail.new(product_detail_params)
    @product_detail.product_id = params[:product_id]

    respond_to do |format|
      if @product_detail.save
        format.html { redirect_to "/products/#{params[:product_id]}/product_details/#{@product_detail.id}", notice: 'Product detail was successfully created.' }
        format.json { render :show, status: :created, location: @product_detail }
      else
        format.html { render :new }
        format.json { render json: @product_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_details/1
  # PATCH/PUT /product_details/1.json
  def update
    respond_to do |format|
      if @product_detail.update(product_detail_params)
        format.html { redirect_to "/products/#{params[:product_id]}/product_details/#{@product_detail.id}", notice: 'Product detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_detail }
      else
        format.html { render :edit }
        format.json { render json: @product_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_details/1
  # DELETE /product_details/1.json
  def destroy
    @product_detail.destroy
    respond_to do |format|
      format.html { redirect_to product_details_url, notice: 'Product detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_detail
      @product_detail = ProductDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_detail_params
      params.require(:product_detail).permit(:color, :size, :weight, :regular_price, :selling_price, :stock_quantity, :product_id, :product_image, :remove_product_image)
    end

    # def set_product
    #   @current_product = Product.find(params[:id])
    # end
end
