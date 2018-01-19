module Api::V1
 
  class ApiController < ApplicationController

    rescue_from(ActiveRecord::RecordNotFound) do ||
      render(json: {message: 'Not found'}, status: :not_found)
    end

    rescue_from(ActionController::ParameterMissing) do |parameter_missing_excepetion|
      render(json: {message: "Required parameter missing: #{parameter_missing_excepetion}"}, status: :bad_request)
    end
  
  end
 end