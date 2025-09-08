class FormsController < ApplicationController
  def create
    @form = Form.new(form_params)
    if @form.save
      FormMailer.with(form: @form).confirmation.deliver_later
      render status: :created
    else
      render status: :unprocessable_entity
    end
  end

  private
    def form_params
      params.expect(form: [ :message, :email, :firstname, :lastname ])
    end
end
