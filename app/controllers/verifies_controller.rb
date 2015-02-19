class VerifiesController < ApplicationController
  before_action :set_verify, only: [:show, :edit, :update, :destroy]
  respond_to :json,:html

  def index
    @verifies = Verify.all
    respond_with(@verifies)
  end

  def show
    respond_with(@verify)
  end

  def new
    @verify = Verify.new
    respond_with(@verify)
  end

  def edit
  end

  def create
    @verify = Verify.new(verify_params)
    # @verify.content.gsub!(/(\r\n)+/){ "<br>" }
    @verify.save
    respond_with(@verify,location: ->{apply_path(@verify.apply)})
  end

  def update
    # params[:verify][:content].gsub!(/(\r\n)+/){ "<br>" }
    @verify.update(verify_params)
    respond_with(@verify,location: ->{apply_path(@verify.apply)})
  end

  def destroy
    @verify.destroy
    respond_with(@verify)
  end

  private
    def set_verify
      @verify = Verify.find(params[:id])
    end

    def verify_params
      params.require(:verify).permit(:is_pass, :apply_id, :content, :user_id)
    end
end
