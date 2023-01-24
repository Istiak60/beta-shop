class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    @product.save
    redirect_to @product

    # if @product.save
    #   redirect_to @product

    # else
    #   render :new, status: :unprocessable_entity
    # end 



  end

  def update
    @product.update(product_params)
    redirect_to @product
  end

def edit
  @product = Product.find(params[:id])
end

 private

 def product_params
    params.require(:product).permit(:title, :short_description, :price)
 end

#  def product
#   @product = Product.find(params[:id])
#  end
end
