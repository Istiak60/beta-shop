module Api
  module V1
    class ProductsController < ApplicationController
      def index
        # @products = Product.all
        render json: Product.all
      end

      def new
        @product = Product.new
      end

      def create
        # binding.pry
        @product = Product.new(product_params)
        # binding.pry
        @product.save
        # binding.pry
      end

      def show
        @product = Product.find(params[:id])
        render json: @product
      end

      def update
        @product.update(product_params)
        # redirect_to @product
      end

      def edit
        @product = Product.find(params[:id])
      end

      private

      def product_params
        params.require(:product).permit(:title, :short_description, :price)
      end
    end
  end
end
