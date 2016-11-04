module Api
  module V1
    class EventsController < ApplicationController

      def index
        events = Event.all
        render json: events
      end

      def show
        event = Event.find_by_id(params[:id])
        render json: event, include: ['organization.name', 'cause.name']
      end

      def create
        event = Event.create(event_params)
        if event.save
          render json: event
        else
          render json: { errors: event.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
        event = Event.find_by_id(params[:id])
        if event.update
          render json: event
        else
          render json: { errors: event.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        respond_with(Event.destroy(params[:id]))
      end

      private

      def event_params
        params.require(:event).permit(:title, :event_type, :start_time, :end_time, :start_date, :end_date, :description, :address, :skills_needed, :minimum_age, :url)
      end

    end
  end
end
