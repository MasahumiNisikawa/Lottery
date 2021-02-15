class TicketsController < 
  before_action :set_operator

  def create
    @ticket = @operator.tickets.build(ticket_params)
    if @ticket.save
      redirect_to @operator
    end
  end

  def destroy
  end

  private

  def set_operator
    @operator = Operator.find(params[:operator_id])
  end

  def ticket_params
    params.require(:tciket).permit(:date,:entrysnumber)
  end

end
