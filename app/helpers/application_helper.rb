module ApplicationHelper
  def my_time(time)
    time.strftime('%F')
  end

  def cadmin?
    current_user.admin?
  end

  def cdistributor?
    current_user.distributor?
  end
end
