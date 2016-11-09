class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  respond_to :json

  protected

  def index
  end

  def set_csrf_cookie
      cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  def verified_request?
    super || valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN'])
  end

end
