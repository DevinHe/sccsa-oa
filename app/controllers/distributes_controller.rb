class DistributesController < ApplicationController
  before_action :set_distribute, only: [:show, :edit, :update, :destroy]
  respond_to :json,:html

  def index
    @distributes = Distribute.all
    respond_with(@distributes)
  end

  def show
    respond_with(@distribute)
  end

  def new
    @distribute = Distribute.new
    respond_with(@distribute)
  end

  def edit
  end

  def create
    @distribute = Distribute.new(distribute_params)
    @distribute.save
    respond_with(@distribute,location: ->{apply_path(@distribute.apply)})
  end

  def update
    @distribute.update(distribute_params)
    respond_with(@distribute)
  end

  def destroy
    @distribute.destroy
    respond_with(@distribute)
  end

  private
    def set_distribute
      @distribute = Distribute.find(params[:id])
    end

    def distribute_params
      params.require(:distribute).permit(:is_distribute, :user_id, :apply_id)
    end
end
