module Api
  module V1
    class CausesController < ApplicationController
      extend Volunteermatch

      def index
        causes = Cause.all
        render json: causes
      end

      def show
        cause = Cause.find_by_id(params[:id])
        vm_cause = Volunteermatch.call(:searchOpportunities, {:location => "new york", :fieldsToDisplay => ["title", "parentOrg", "availability", "plaintextDescription", "location", "skillsNeeded", "minimumAge", "vmUrl"], :numberOfResults => 20, :sortOrder => "asc", :categoryIds => [params[:id].to_i]}.to_json)

        render json: cause, include: ['events']
      end

    end
  end
end
