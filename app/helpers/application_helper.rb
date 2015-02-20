module ApplicationHelper

  def user_role(user)
    if user.role == 0
      "无权限"
    elsif user.role == 1
      "社区／俱乐部"
    else user.role == 2
      "配送单位"
    end
  end
end
