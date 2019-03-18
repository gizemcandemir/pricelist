class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(10)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:collection, :title, :designer, :year))
    if @product.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, notice: "Your post has been deleted"
  end
end
