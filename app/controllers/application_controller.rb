class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :send_medication_reminders

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_number, :family_phone_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone_number, :family_phone_number])
  end

  def service_worker_js
    render 'service_worker.js', content_type: 'application/javascript'
  end



  private

  def send_medication_reminders

    medications_to_remind = Medication.where(reminder_required: true)


    if medications_to_remind.any?

      medications_to_remind.each do |medication|
        send_medication_reminder(medication)
      end
    else

      redirect_to medications_url, notice: 'No medications require reminders.'
    end
  end




end
