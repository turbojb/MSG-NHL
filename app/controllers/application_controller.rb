class ApplicationController < ActionController::Base
   protect_from_forgery :verify_authenticity_token

  layout :layout_by_resource
  #layout :resolve_layout

  protected

  def layout_by_resource
    if devise_controller?
      "admins"
    else
      "application"
    end
  end

  def resolve_layout
    case controller_name
    when "admins"
      "admins"
    when "entries"
      "admins"
    else
      "application"
    end
  end
end
