class Api::V1::SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    user_email = params[:session][:email]
    user_password = params[:session][:password]

    user = user_email.present? && User.find_by(email: user_email)

    if user.valid_password? user_password
      sign_in user, store: false
      user.generate_authentication_token!
      user.save
      render json: { result: "success", user: user }
    else
      render json: { errors: "Invalid email or password" }, status: 422
    end
  end

  def destroy
    user = User.find_by(auth_token: params[:id])
    user.generate_authentication_token!
    user.save
    render json: { result: "success" }
  end
end