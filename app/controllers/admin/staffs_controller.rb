class Admin::StaffsController < Admin::AdminsController

  def index
    @operators = Operator.all
  end

  def new
  end
  
  def show
  end
  
  
end
