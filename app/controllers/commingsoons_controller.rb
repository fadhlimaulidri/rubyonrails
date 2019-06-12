class CommingsoonsController < ApplicationController
  def index

    tf = ToggleFeature.find_by(:feature_name => 'comming soon')

    if tf.state
      render "commingsoons/index", :layout => false
    else
      redirect_to root_path
    end
  end

  def create
    # render plain: params[:article].inspect
    # @user = User.new(params[:commingsoon])
    @user = User.new(user_params)
    @user.save!
    redirect_to commingsoons_path
  end

  private

  def user_params
    params.require(:commingsoon).permit(:email, :text)
  end
end
