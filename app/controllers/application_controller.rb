class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :categories_list
  def categories_list
    @categories = Category.all()
  end
end
