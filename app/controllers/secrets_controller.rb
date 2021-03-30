class SecretsController < ApplicationController
    before_action :require_logged_in
    def show
    end

    def require_logged_in
        redirect_to login_path unless current_user
    end
end