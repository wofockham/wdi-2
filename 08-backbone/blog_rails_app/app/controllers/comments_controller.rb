class CommentsController < ApplicationController
  def create
    comment = Comment.create(:author => params[:author], :blather => params[:blather], :post_id => params[:post_id])
    render json: comment
  end
end