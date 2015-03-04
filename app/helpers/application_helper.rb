module ApplicationHelper

  def my_date(time)
    time.strftime('%Y年%m月%d日')
  end

  def my_index_date(time)
    time.strftime('%Y/%m/%d')
  end

  def my_time(time)
    time.strftime('%Y年%m月%d日 %H:%M')
  end

  def cadmin?
    current_user.admin?
  end

  def cdistributor?
    current_user.distributor?
  end

  def flash_class(level)
    case level
      when 'notice' then "alert alert-info"
      when 'success' then "alert alert-success"
      when 'error' then "alert alert-danger"
      when 'alert' then "alert alert-warning"
    end
  end

  def verify_status(apply)
    if apply.verify.nil?
      content_tag :span, '审批中...', class: "label label-info label-distribution"
    elsif apply.verify.is_pass
      content_tag :span, '批准', class: "label label-success label-distribution"
    else
      content_tag :span, '退回', class: "label label-warning label-distribution"
    end
  end

  def distribute_status(apply)
     if apply.distribute && apply.distribute.is_distribute
      content_tag :span, '确认配送', class: 'label label-info label-distribution'
     else
      content_tag :span, '未配送', class: 'label label-default label-distribution'
     end
  end

  def apply_index_operators(apply)
    if apply.user_id == current_user.id
      if apply.verify.nil?
        "#{link_to '撤销申报', apply, method: :delete, data: { confirm: '你确定要撤销吗？' }}"
      elsif apply.verify.is_pass && apply.feedback.nil? && apply.distribute.nil?
        "#{link_to '填写项目反馈', "#",style: "point-events:none;cursor:default;color:Gray;"}"
      elsif apply.verify.is_pass && apply.feedback.nil?
        "#{link_to '填写项目反馈', "#{new_feedback_path}?id=#{apply.id}"}"
      elsif apply.verify.is_pass && apply.feedback
        "#{link_to '查看项目反馈', apply.feedback}"
      else
        "#{link_to '重新提交 ', edit_apply_path(apply)} | #{link_to '撤销申报', apply, method: :delete, data: { confirm: '你确定要撤销吗？' }}"
      end
    else
      show_feedback_status apply
    end
  end

  def show_feedback_status(apply)
    if apply.feedback.nil? && apply.user_id == current_user.id
      "#{link_to '填写反馈', "#{new_feedback_path}?id=#{apply.id}"}"
    elsif apply.feedback && apply.feedback.notifications.first.user_id == current_user.id && !cadmin?
      "#{link_to '填写反馈', edit_feedback_path(apply.feedback)}"
    elsif apply.feedback && apply.feedback.distribute_advice.present?
      "#{link_to '查看反馈', apply.feedback}"
    else
      "#{link_to "反馈中...", "#",style: "point-events:none;cursor:default;color:Gray;"}"
    end
  end

end
