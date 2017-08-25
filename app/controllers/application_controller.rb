class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # result = MySchema.execute(
  #   params[:query],
  #   variables: params[:variables],
  #   context: { current_user: current_user },
  # )
  # render json: result
end
