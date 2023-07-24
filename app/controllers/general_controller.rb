class GeneralController < ApplicationController
    before_action :set_user
    def index
        render layout: false
        
    end
    def modelo
    end
    def set_user
        @user = current_user
    end
end
