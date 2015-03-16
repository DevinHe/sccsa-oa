class WelcomeController < ApplicationController
  def home
    @user = current_user
  end

  def error_404
    render_404
  end
end
