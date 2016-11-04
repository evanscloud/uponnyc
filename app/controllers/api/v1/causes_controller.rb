module Api
  module V1
    class CausesController < ApplicationController

      def index
        causes = Cause.all
        render json: causes
      end

      def show
        cause = Cause.find_by(params[:id])
        render json: cause
      end

    end
  end
end
