# frozen_string_literal: true

class SessionsController < ApplicationController
  before_action :redirect_logged_in, only: %i[new create], if: :logged_in?

  expose :user, :set_user

  def new
    render layout: "core"
  end

  def create
    if user&.authenticate(params[:password])
      reset_user_session!
      commit_user_to_session!(user)

      redirect_to(root_path)
    else
      flash.now[:alert] = "Пользователя с таким именем нет"
      render :new
    end
  end

  def destroy
    reset_user_session!

    redirect_back(fallback_location: root_path)
  end

  private

  def set_user
    User.find_by(username: params[:username])
  end
end
