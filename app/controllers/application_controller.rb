class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token if Rails.env.test?

  def after_sign_in_path_for(resource)
    if resource.role == 'Owner'
      owner_index_path
    else
      root_path
    end
  end
end
