class Admin::OperatorsController < ApplicationController

    def def index
        @admin = Admin.all
    end
    
end
