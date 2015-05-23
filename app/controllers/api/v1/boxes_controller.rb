class Api::V1::BoxesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :authenticate_with_token!

  def index
    @boxes = Box.paginate(page: params[:page])
    render json: { result: "success", boxes: @boxes }
  end

  def show
    @box = Box.find(params[:id])

    if @box
      render json: { result: "success", box: @box }
    else
      render json: { result: "fail" }
    end
  end

  def create
    @box = Box.new(box_params)
    @box.user = current_user_with_token

    if @box.save
      render json: { result: "success", box: @box }
    else
      render json: { result: "fail", errors: @box.errors }
    end
  end

  def update
    @box = Box.find(params[:id])

    if current_user_with_token == @box.user
      if @box.update_attributes(box_params)
        render json: { result: "success", box: @box }
      else
        render json: { result: "fail", errors: @box.errors }
      end
    else
      render json: { result: "fail" }
    end
  end

  def destroy
    @box = Box.find(params[:id])

    if current_user_with_token == @box.user
      @box.destroy
      render json: { result: "success" }
    else
      render json: { result: "fail" }
    end
  end

  private

  def box_params
    params.require(:box).permit(:name, :description)
  end
end
