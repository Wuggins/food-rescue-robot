class TransportTypesController < ApplicationController
  before_filter :authenticate_volunteer!

  active_scaffold :transport_type do |conf|
    # if marking isn't enabled it creates errors on delete :(
    conf.actions.add :mark
  end
  def create_authorized?
    current_volunteer.super_admin?
  end
  def update_authorized?(record=nil)
    current_volunteer.super_admin?
  end
  def delete_authorized?(record=nil)
    current_volunteer.super_admin?
  end
end 
