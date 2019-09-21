class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :check_admin, only: [:create, :edit, :update, :destroy ]
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    # @product_detail = ProductDetail.find(params[:id]) #product_detailid がnill
    @product_details = ProductDetail.where(product_id: params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        params[:product][:tag_ids].each do |tag_id|
          if tag_id != ""

            @product_tag = ProductTag.new(
              product_id: Product.last.id,
              tag_id: tag_id.to_i
            )
            @product_tag.save
          end
        end

        params[:product][:category_ids].each do |category_id|
          if category_id != ""

            @product_category = ProductCategory.new(
              product_id: Product.last.id,
              category_id: category_id.to_i
            )
            @product_category.save
            # logger.debug @product_category.errors.inspect
          end
        end  

        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }        
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)

        ProductTag.where(product_id: @product.id).destroy_all
        ProductCategory.where(product_id: @product.id).destroy_all

        params[:product][:tag_ids].each do |tag_id|
          if tag_id != ""

            @product_tag = ProductTag.new(
              product_id: @product.id,
              tag_id: tag_id.to_i
            )
            @product_tag.save
          end
        end

        params[:product][:category_ids].each do |category_id|
          if category_id != ""

            @product_category = ProductCategory.new(
              product_id: @product.id,
              category_id: category_id.to_i
            )
            @product_category.save
            # logger.debug @product_category.errors.inspect
          end
        end  

        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:product_name, :origin_country, :delivery_require_day, :supplier_id) 
    end

    def check_admin
      if user_signed_in?
        if !(current_user.role == '管理者' || current_user.role == '業者')
          redirect_to("/products")
          flash[:notice] = "管理者か業者のみ編集できます"
        end
      else
        redirect_to("/products")
        flash[:notice] = "管理者か業者のみ編集できます"     
      end
    end

end