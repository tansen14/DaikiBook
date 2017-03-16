class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  def new
  end

  def create
    # comment = Comment.new
    # comment.content = params[:content]
    # comment.save
    redirect_to 'comments/'
	end

  def edit
  end

  def destroy
  end
end
