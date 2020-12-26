# frozen_string_literal: true

class OmniauthController < ApplicationController

  def facebook
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect @user
      if is_navigational_formate?
        set_flash_message(:noitce, :succcess, kind: 'facebook')
      end
    else
      flash[:error] = 'Problem with facebook'
      redirect_to new_user_registration_path
    end
  end

  def github
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect posts_path
      if is_navigational_formate?
        set_flash_message(:noitce, :succcess, kind: 'Github')
      end
    else
      flash[:error] = 'Problem with github'
      redirect_to new_user_registration_path
    end
  end

  def google_oauth2
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect @user
      if is_navigational_formate?
        set_flash_message(:noitce, :succcess, kind: 'Github')
      end
    else
      flash[:error] = 'Problem with google'
      redirect_to new_user_registration_path
    end
  end

  def failure
    byebug
    flash[:error] = 'Problem in sign in'
    redirect_to new_user_registration_path
  end
end
