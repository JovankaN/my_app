class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # before_filter :authenticate_user!
  before_action :authenticate_user!, :except => [:show, :index]
  load_and_authorize_resource

  # GET /products
  # GET /products.json
  def index

    if params[:q]
      search_term = params[:q]
      @products = Product.where("name LIKE ?", "%#{search_term}%")

    else
      @products = Product.all

    end
    # byebug
  end
  # this is how we write a filted list of products that match or get as close to their search name,the other case is that if the user navigates to the index page without entering a search term, we want them to see all products instead.For our search condition, we will use the Active Record where method, to find products where their name matches the search_term variable. Most users may enter just part of the name if they can’t remember the whole thing. For this, SQL has a useful matching operator called LIKE,but In order to be able to search for words while ignoring whether some letters are upper or lower case, you need to use "ilike" and it allows you to include a “wildcard” character (%) to indicate that the matching term may be part of a longer string.So we need to put percentage characters around our search_term string.

  # GET /products/1
  # GET /products/1.json
  def show
    @comment = @product.comments.order("created_at DESC").paginate(:page => params[:page], :per_page => 3)
  end

  # GET /products/new
  def new
    byebug
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
        format.html { redirect_to '/products', notice: 'Product was successfully created.' }
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
      params.require(:product).permit(:name, :description, :image_url,  :colour, :price)
    end
end
