class FormsController < ApplicationController
  def create
    data = form_params().to_h
    FormMailer.with(data: data).confirmation.deliver_later
  end

  private
    def form_params
      params.expect(form: [ :message, :email, :firstname, :lastname ])
    end
end
