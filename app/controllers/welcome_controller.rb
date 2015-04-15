class WelcomeController < ApplicationController
  skip_before_action :verify_authenticity_token,only: :error_404

  def home
    @user = current_user
  end

  def error_404
    render_404
  end
end
