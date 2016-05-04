class HomeController < ApplicationController
  def index
  	if signed_in?
  		redirect_to shares_path
  	end
  end
end
