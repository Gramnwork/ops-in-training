class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :before_page_view

  def before_page_view
  	@title_tag = "ops-in トレーニング用アプリ"
  end
  
end
