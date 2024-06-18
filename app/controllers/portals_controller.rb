class PortalsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_role

  def receptionist
    @patients = Patient.all
  end

  def doctor
    @patients = Patient.all
    @patients_by_day = Patient.group_by_day(:created_at).count
  end

  private

  def check_role
    if current_user.role == 'receptionist' && action_name == 'doctor'
      redirect_to receptionist_portal_path
    elsif current_user.role == 'doctor' && action_name == 'receptionist'
      redirect_to doctor_portal_path
    end
  end
end
