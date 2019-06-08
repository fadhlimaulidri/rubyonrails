class CommingsoonsController < ApplicationController
  def index

    tf = ToggleFeature.find_by(:feature_name => 'comming soon')

    if tf.state
      render "commingsoons/index", :layout => false
    else
      redirect_to root_path
    end
  end
end
