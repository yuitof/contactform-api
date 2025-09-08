class FormsController < ApplicationController
  TOKEN = "secret"

  before_action :authenticate

  def create
    data = form_params().to_h
    FormMailer.with(data: data).confirmation.deliver_later
  end

  private
    def form_params
      params.expect(form: [ :message, :email, :firstname, :lastname ])
    end

    def authenticate
      authenticate_or_request_with_http_token do |token, options|
        # Compare the tokens in a time-constant manner, to mitigate
        # timing attacks.
        ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
      end
    end
end
