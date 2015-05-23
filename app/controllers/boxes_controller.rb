class BoxesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @boxes = current_user.boxes.paginate(page: params[:page])
  end

  def show
    @box = Box.find(params[:id])
    @histories = @box.histories.paginate(page: params[:page])
  end

  def edit
    @box = Box.find(params[:id])

    authorize_action_for @box
  end

  def update
    @box = Box.find(params[:id])

    authorize_action_for @box

    if @box.update_attributes(box_params)
      flash[:success] = "택배보관함 정보를 수정하였습니다."
      redirect_to @box
    else
      render 'edit'
    end
  end

  def destroy
    @box = Box.find(params[:id])

    authorize_action_for @box

    @box.destroy

    flash[:success] = "택배보관함을 삭제하였습니다."
    redirect_to boxes_url
  end

  private

  def box_params
    params.require(:box).permit(:name, :description)
  end
end
