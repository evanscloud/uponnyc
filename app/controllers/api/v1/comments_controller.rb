module Api
  module V1
    class CommentsController < ApplicationController

      def index
        comments = Comment.all
        render json: comments
      end

      def show
        comment = Comment.find_by_id(params[:id])
        render json: comment, include: ['events']
      end

      def create
        event = Event.find_by_id(params[:event_id])
        comment = event.comments.create(comment_params)
        if comment.save
          render json: comment
        else
          render json: { errors: comment.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def comment_params
        params.require(:comment).permit(:name, :content, :event_id)
      end

    end
  end
end
