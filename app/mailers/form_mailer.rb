class FormMailer < ApplicationMailer
  default from: "notifications@example.com"

  def confirmation
    @data = params[:data]
    mail to: @data[:email]
  end
end
