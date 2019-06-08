class HomeController < ApplicationController
  def index
    tf = ToggleFeature.find_by(:feature_name => 'comming soon')

    if tf.state
      redirect_to commingsoons_path
    end
  end
end
