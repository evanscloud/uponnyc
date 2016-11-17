module Api
  module V1
    class EventsController < ApplicationController

      def index
        events = Event.all
        render json: events
      end

      def show
        event = Event.find_by_id(params[:id])
        render json: event, include: ['cause.name']
      end

      def create
        event = Event.create(event_params)
        if event.save
          render json: event
        else
          render json: { errors: event.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def event_params
        params.require(:event).permit(:title, :organization, :start, :end, :description, :address, :skills, :age, :url, :cause_id)
      end

    end
  end
end
