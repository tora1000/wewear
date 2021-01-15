class CommentsController < ApplicationController
  def new
    @comments = Comment.all
    @comment = Comment.new
  end

  def create
    @coordination = Coordination.find(params[:coordination_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      ActionCable.server.broadcast 'comment_channel', content: @comment
      redirect_to coordination_path(@coordination.id)
    else
      @coordination = @comment.coordination
      @comments = @coordination.comments
      render "coordinations/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, coordination_id: params[:coordination_id])
  end
end
