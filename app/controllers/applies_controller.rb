# encoding: utf-8
class AppliesController < ApplicationController
  before_action :set_apply, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    if current_user.admin?
      @q = Apply.ransack(params[:q])
    elsif current_user.distributor?
      @q = Apply.includes(:verify).where(verifies: {user_id: current_user.id}).ransack(params[:q])
    else
      @q = Apply.where(user_id: current_user.id).ransack(params[:q])
    end
    @applies = @q.result.includes(:user,:category,:project,:verify,:distribute,:feedback).paginate(:page => params[:page], :per_page => 10)
    respond_with(@applies)
  end

  def show
    if params[:from] && params[:from] != 'again'
      notification = Notification.find(params[:from])
      notification.update_attribute(:read, true) if notification
    end
    respond_with(@apply)
  end

  def new
    @apply = Apply.new
    if params[:pid]
      project = Project.find(params[:pid])
      @apply.project = project
      @apply.category = project.category
    end
    respond_with(@apply)
  end

  def edit
  end

  def create
    @apply = Apply.new(apply_params)
    if @apply.save
      @apply.p_serial = "SCCSA_#{@apply.id}"
      @apply.save!
    end
    respond_with(@apply)
  end

  def update
    @apply.update(apply_params)
    respond_with(@apply,location: ->{"#{apply_path}?from=again"})
  end

  def destroy
    @apply.destroy
    respond_with(@apply)
  end

  def export_to_excel
    @headers = ["序号", "申报单位", "申报日期", "意愿实施时间", "配送ID", "申报项目类别", "项目名称", "项目编号", "参与者年龄", "参与人数", "实施场地名称", "实施场地地址", "需要讲师/教练自备物品", "申报单位联系人", "申报单位联系电话", "教练姓名", "教练联系电话", "实际受众人数", "街道工作人员意见", "配送单位意见", "问询", "备注"]
    respond_to do |format|
      format.csv {send_data csv_infos}
      format.xls {send_data xls_infos, :filename => 'sccsa.xls'}
    end
  end

  private
    def set_apply
      @apply = Apply.find(params[:id])
    end

    def apply_params
      params.require(:apply).permit(:user_id, :project_id, :category_id, :requirement, :site, :facilities, :address, :contacts, :address_name, :phone,:implement_time, :p_serial)
    end

    def xls_infos
      book = Spreadsheet::Workbook.new
      sheet1 = book.create_worksheet
      sheet1.row(0).concat @headers
      rowId = 1
      Apply.includes(:user,:category,:project,:verify,:distribute,:feedback).find_each do |apply|
        @headers.each_with_index do |header, index|
          result =  case index
                    when 0
                      ''
                    when 1
                      apply.user.unit rescue ''
                    when 2
                      apply.created_at.strftime('%Y/%m/%d') rescue ""
                    when 3
                      apply.implement_time.strftime('%Y/%m/%d %H:%M') rescue ""
                    when 4
                      apply.p_serial rescue ''
                    when 5
                      apply.category.name rescue ''
                    when 6
                      apply.project.name  rescue ''
                    when 7
                      apply.project.serial  rescue ''
                    when 8
                      apply.requirement  rescue ''
                    when 9
                      apply.site  rescue ''
                    when 10
                      apply.address_name  rescue ''
                    when 11
                      apply.address  rescue ''
                    when 12
                      apply.facilities  rescue ''
                    when 13
                      apply.contacts  rescue ''
                    when 14
                      apply.phone  rescue ''
                    when 15
                      apply.distribute.coaches  rescue ''
                    when 16
                      apply.distribute.phone  rescue ''
                    when 17
                      apply.feedback.population  rescue ''
                    when 18
                      apply.feedback.suggestion  rescue ''
                    when 19
                      apply.feedback.distribute_advice  rescue ''
                    when 20
                      '已问询' if apply.distribute.questionnaire  rescue '未问询'
                    when 21
                      ''
                    end
          sheet1[rowId, index] = result
        end
        rowId += 1
      end
      io = StringIO.new('')
      book.write(io)
      io.string
    end

    def csv_infos
      output = @headers.join(',')
      output << "\r\n"
      Apply.includes(:user,:category,:project,:verify,:distribute,:feedback).find_each do |apply|
        temp = ''
        @headers.each_with_index do |header, index|
          result =  case index
                    when 0
                      ""
                    when 1
                      apply.user.unit rescue ""
                    when 2
                      apply.created_at.strftime('%Y/%m/%d') rescue ""
                    when 3
                      apply.implement_time.strftime('%Y/%m/%d %H:%M') rescue ""
                    when 4
                      apply.p_serial rescue ""
                    when 5
                      apply.category.name rescue ""
                    when 6
                      apply.project.name  rescue ""
                    when 7
                      apply.project.serial.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 8
                      apply.requirement.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 9
                      apply.site.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 10
                      apply.address_name.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 11
                      apply.address.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 12
                      apply.facilities.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 13
                      apply.contacts.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 14
                      apply.phone.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 15
                      apply.distribute.coaches.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 16
                      apply.distribute.phone.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 17
                      apply.feedback.population.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 18
                      apply.feedback.suggestion.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 19
                      apply.feedback.distribute_advice.gsub(",", "，").gsub("\r\n","，")  rescue ""
                    when 20
                      '已问询' if apply.distribute.questionnaire  rescue '未问询'
                    when 21
                      ""
                    end
          if index > 0
            temp += ",#{result}"
          else
            temp += "#{result}"
          end
        end
        output << temp
        output << "\r\n"
      end
      output
    end
end
