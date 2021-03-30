class SessionsController < ApplicationController
    def create
        if params[:name].nil? || !params[:name].present?
            redirect_to login_path
        else
           session[:name] = params[:name]
        end
    end

    def destroy
        if current_user
            session.destroy
        end
    end
end