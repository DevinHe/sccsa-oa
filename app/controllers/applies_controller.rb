class AppliesController < ApplicationController
  before_action :set_apply, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @applies = Apply.all
    respond_with(@applies)
  end

  def show
    notification = @apply.notifications.unread(current_user.id).first
    notification.update_attribute(:read, true) if notification

    # @verfy = Verify.new({apply_id: @apply.id}) if current_user.admin?
    respond_with(@apply)
  end

  def new
    @apply = Apply.new
    respond_with(@apply)
  end

  def edit
  end

  def create
    @apply = Apply.new(apply_params)
    @apply.save
    respond_with(@apply)
  end

  def update
    @apply.update(apply_params)
    respond_with(@apply)
  end

  def destroy
    @apply.destroy
    respond_with(@apply)
  end

  private
    def set_apply
      @apply = Apply.find(params[:id])
    end

    def apply_params
      params.require(:apply).permit(:user_id, :project_id, :category_id, :requirement, :site, :facilities, :address, :implement_time, :attachment)
    end
end
