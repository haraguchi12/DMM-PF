class ApplicationController < ActionController::Base
  def after_sign_out_path_for(resource)
   root_path
  end

  def after_sign_in_path_for(resource)
    case resource
    when User
      user_path

    when Store
       store_path
    end
  end
end
