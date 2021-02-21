class Admin::TicketsController < Admin::AdminsController
  before_action :authenticate_admin_operator!
  before_action :set_entry

  layout 'admin'

  def index
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = @entry.tickets.build(ticket_params)
    if @ticket.save
      redirect_to @ticket
    end
  end

  def edit
  end
  
  private

  def set_entry
    @entry = Entry.find(params[:entry_id])
  end

  def set_ticket
    @tickets = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:tciket).permit(:date,:entrysnumber)
  end

end
