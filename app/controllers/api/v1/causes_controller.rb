module Api
  module V1
    class CausesController < ApplicationController
      extend Volunteermatch

      def index
        causes = Cause.all
        render json: causes
      end

      def show
        Volunteermatch.call_events(params[:id])
        cause = Cause.find_by_id(params[:id])

        render json: cause, include: ['events']
      end

    end
  end
end
