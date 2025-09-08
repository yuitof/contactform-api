class FormMailer < ApplicationMailer
  default from: "notifications@example.com"

  def confirmation
    @form = params[:form]
    mail to: @form.email
  end
end
