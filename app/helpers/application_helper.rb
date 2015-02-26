module ApplicationHelper

  def my_date(time)
    time.strftime('%Y年%m月%d日')
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

end
