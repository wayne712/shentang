class HomeController < ApplicationController
  #before_action :authenticate_user!, only: :secret

  # to allow using wechat, wechat_oauth2 in controller and wechat_config_js in view
  #wechat_api

  def index
    @categories = Category.all
  end

  def about
    render plain: '关于我们'
  end
end
