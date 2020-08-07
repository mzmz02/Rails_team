class GoodsController < ApplicationController

  def create
    @current_user=User.find_by(id: session[:user_id]) 
    @good = Good.new(user_id: @current_user.id, post_id: params[:post_id])
    @good.save

    @post = Post.find_by(id: @good.post_id)
    @good_count = Good.where(post_id: params[:post_id]).count
    redirect_to("/posts")
  end
      
  def destroy
    @current_user=User.find_by(id: session[:user_id]) 
    @good = Good.find_by(user_id: @current_user.id, post_id: params[:post_id])
    @good.destroy
    
    @post = Post.find_by(id: @good.post_id)
    @good_count = Good.where(post_id: params[:post_id]).count
    redirect_to("/posts")
  end

end
