class EntrysController < ApplicationController

    def index
        @entrys = Entry.all
    end
    
end
