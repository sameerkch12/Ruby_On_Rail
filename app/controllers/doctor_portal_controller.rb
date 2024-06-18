class DoctorPortalController < ApplicationController
  def index
    @patients_count_by_day = Patient.group_by_day(:created_at).count
  end
end
