class HistoriesController < ApplicationController

  def edit
    @history = Box.find(params[:id])

    authorize_action_for @history
  end

  def update
    @history = Box.find(params[:id])

    authorize_action_for @history

    if @history.update_attributes(history_params)
      flash[:success] = "택배보관함 내역 정보를 수정하였습니다."
      redirect_to @history
    else
      render 'edit'
    end
  end

  def destroy
    @history = Box.find(params[:id])

    authorize_action_for @history

    @history.destroy

    flash[:success] = "택배보관함 내역을 삭제하였습니다."
    redirect_to histories_url
  end

  private

  def history_params
    params.require(:history).permit(:type, :description)
  end
end
