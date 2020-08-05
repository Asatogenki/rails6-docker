class Staff::TopController < Staff::Base
  def index
    if current_staff_member
      render action: "dashboard"
    else
      render action: "index"
    end
  end
end
