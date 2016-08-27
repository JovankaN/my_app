class CommentsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @product, notice: 'Review was created successfully.'}
        format.json { render :show, status: :created, location: @product }
      else
        format.html { redirect_to @product, alert: 'Review was not saved successfully.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy

    @comment = Comment.find(params[:comment_id])
    product = @comment.product
    @comment.destroy
    redirect_to product
  end
  #we want to reload the product detail page after the comment gets deleted. To do that, we need to retrieve the product record from the comment before we delete it, and redirect the user to that page


  private

  def comment_params
    params.require(:comment).permit(:user_id, :body, :rating)
  end

end
