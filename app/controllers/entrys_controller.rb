class EntrysController < ApplicationController
    

    def index
        @entrys = Entry.all
    end
    
    def new
        @entrys = Entry.new
    end

    def show
        @entry = Entry.find(:id)
    end
    
    

end
