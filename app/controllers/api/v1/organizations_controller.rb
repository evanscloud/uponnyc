module Api
  module V1
    class OrganizationsController < ApplicationController

      def index
        organizations = Organization.all
        render json: organizations
      end

      def show
        organization = Organization.find_by(params[:id])
        render json: organization
      end

    end
  end
end
