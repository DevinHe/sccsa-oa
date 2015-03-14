class FeedbacksController < ApplicationController
  before_action :set_feedback, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @feedbacks = Feedback.all
    respond_with(@feedbacks)
  end

  def show
    notification = @feedback.notifications.unread(current_user.id).first
    notification.update_attribute(:read, true) if notification
    respond_with(@feedback)
  end

  def new
    @feedback = Feedback.new
    @feedback.user_id = current_user.id
    if params[:id]
      @feedback.apply = Apply.find(params[:id])
      respond_with(@feedback)
    else
      # respond_with(@feedback,location: ->{ applies_path(@feedback) })
      redirect_to applies_path
    end
  end

  def edit
    notification = @feedback.notifications.unread(current_user.id).first
    notification.update_attribute(:read, true) if notification
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.save
    respond_with(@feedback)
  end

  def update
    @feedback.update(feedback_params)
    respond_with(@feedback)
  end

  def destroy
    @feedback.destroy
    respond_with(@feedback)
  end

  private
    def set_feedback
      @feedback = Feedback.find(params[:id])
    end

    def feedback_params
      params.require(:feedback).permit(:user_id, :apply_id, :content, :coach, :suggestion, :population, :distribute_advice, :attachment, :remove_attachment)
    end
end
