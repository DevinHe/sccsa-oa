class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @questionnaires = Questionnaire.all
    respond_with(@questionnaires)
  end

  def show
    respond_with(@questionnaire)
  end

  def new
    @questionnaire = Questionnaire.new
    @questionnaire.distribute_id = params[:did] if params[:did]
    respond_with(@questionnaire)
  end

  def edit
  end

  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    @questionnaire.save
    respond_with(@questionnaire)
  end

  def update
    @questionnaire.update(questionnaire_params)
    respond_with(@questionnaire)
  end

  def destroy
    @questionnaire.destroy
    respond_with(@questionnaire)
  end

  private
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end

    def questionnaire_params
      params.require(:questionnaire).permit(:content, :coaches, :population, :start_time, :situation, :other, :coache_sitution, :coache_other, :distribute_id)
    end
end
